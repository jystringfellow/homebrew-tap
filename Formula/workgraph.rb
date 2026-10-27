class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.7.1/workgraph_0.7.1_darwin_arm64.tar.gz"
      sha256 "96511b20a8343b46da350c34ba68ca03c5cf76b45e30d5fc95a49c6e3da3de51"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.7.1/workgraph_0.7.1_darwin_amd64.tar.gz"
      sha256 "b82938cff4c5a7c5c758b4af9a455aa1e9fae0dea8433b4d5696139065d9cd18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.7.1/workgraph_0.7.1_linux_arm64.tar.gz"
      sha256 "646f8a088f7ef21aee833a7598a72d8c63862c1dcc377eac28dc9b52c99fcdc0"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.7.1/workgraph_0.7.1_linux_amd64.tar.gz"
      sha256 "a2df6b9a271b64fe2811bb14ee395a096983e5f996a4a65c9efebc6bcffd9f11"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
