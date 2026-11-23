#!/usr/bin/env bash
set -euo pipefail

formula="$1"
repo="$2"
prefix="$3"
file="Formula/${formula}.rb"
output="${GITHUB_OUTPUT:-/dev/null}"

tag="$(gh api "repos/${repo}/releases?per_page=1" --jq '.[0].tag_name')"
if [[ ! "$tag" =~ ^v[0-9]+\.[0-9]+\.[0-9]+(-[0-9A-Za-z.-]+)?$ ]]; then
  echo "unexpected release tag for ${repo}: ${tag}" >&2
  exit 1
fi
latest="${tag#v}"
current="$(sed -n 's|.*/releases/download/v\([^/]*\)/.*|\1|p' "$file" | head -1)"
if [[ -z "$current" ]]; then
  echo "no release URL in ${file}" >&2
  exit 1
fi

{
  echo "current=${current}"
  echo "latest=${latest}"
} >> "$output"

if [[ "$latest" == "$current" ]]; then
  echo "needs_update=false" >> "$output"
  echo "${formula} is already at ${current}"
  exit 0
fi

work="$(mktemp -d "${RUNNER_TEMP:-${TMPDIR:-/tmp}}/formula-XXXXXXXX")"
gh release download "$tag" --repo "$repo" --dir "$work" \
  --pattern "${prefix}_${tag}_*.tar.gz" --pattern SHA256SUMS
(cd "$work" && sha256sum --check --ignore-missing SHA256SUMS)

for target in darwin_arm64 darwin_amd64 linux_arm64 linux_amd64; do
  asset="${prefix}_${tag}_${target}.tar.gz"
  gh attestation verify "${work}/${asset}" --repo "$repo" \
    --signer-workflow "${repo}/.github/workflows/release.yml"
  sum="$(sha256sum "${work}/${asset}" | cut -d' ' -f1)"
  awk -v asset="${prefix}_v${current}_${target}.tar.gz" -v sum="$sum" '
    index($0, asset) { pending = 1 }
    pending && /sha256 "/ { sub(/"[0-9a-f]+"/, "\"" sum "\""); pending = 0 }
    { print }
  ' "$file" > "${file}.new"
  mv "${file}.new" "$file"
done

content="$(<"$file")"
printf '%s\n' "${content//"$current"/"$latest"}" > "$file"

for target in darwin_arm64 darwin_amd64 linux_arm64 linux_amd64; do
  sum="$(sha256sum "${work}/${prefix}_${tag}_${target}.tar.gz" | cut -d' ' -f1)"
  grep -q "$sum" "$file" || { echo "${file} is missing the checksum for ${target}" >&2; exit 1; }
done

echo "needs_update=true" >> "$output"
echo "${formula}: ${current} -> ${latest}"
