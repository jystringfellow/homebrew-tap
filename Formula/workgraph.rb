class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.2.0/workgraph_0.2.0_darwin_arm64.tar.gz"
      sha256 "131252e9a1cd6d952e1f3874d8a8539ec7becd89b1faf8d98707af0bab8abf51"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.2.0/workgraph_0.2.0_darwin_amd64.tar.gz"
      sha256 "253f53b6f5c862d178cf2a47aaa87bfd9436a7acc646ec8f4b801f9eadb5cba9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.2.0/workgraph_0.2.0_linux_arm64.tar.gz"
      sha256 "efeadc91126c58710ff92883248b29b0d0ac9b10fdc1fc12d9ed6bba0e0510fb"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.2.0/workgraph_0.2.0_linux_amd64.tar.gz"
      sha256 "3cd6b2bef69643f7059aa92e4a7220704604ec4c5cb1f9aa1e5986dbd7401916"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
