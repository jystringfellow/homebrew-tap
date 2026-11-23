# Jystringfellow Tap

## How do I install these formulae?

`brew install jystringfellow/tap/<formula>`

Or `brew tap jystringfellow/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "jystringfellow/tap"
brew "<formula>"
```

## Formulae

| Formula | Installs | Updated by |
| --- | --- | --- |
| `workgraph` | `workgraph` | its own release workflow |
| `scoring-stage` | `stage` | `update-agent-tools.yml`, hourly |
| `kapellmeister` | `km` | `update-agent-tools.yml`, hourly |

`update-agent-tools.yml` reads each project's newest release, pre-releases included. It checks the archives against
the release's `SHA256SUMS` and their build attestations before it commits the new version and checksums. To update
straight after a release, run it by hand: `gh workflow run update-agent-tools.yml -R jystringfellow/homebrew-tap`.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
