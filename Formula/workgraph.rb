class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.3/workgraph_0.3.3_darwin_arm64.tar.gz"
      sha256 "d01311bdad98de3bb3e9f8f123d0e7a271ce2e0a701aef978fe1396bcd5d3b04"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.3/workgraph_0.3.3_darwin_amd64.tar.gz"
      sha256 "ba7a3de5c399e2eeb12c9a4ee8a7702782c367a803773d63bbbffc3c79a06286"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.3/workgraph_0.3.3_linux_arm64.tar.gz"
      sha256 "be7c8d2d703e5b5a776195d204b46ecf28307814713911250075182314bbccdf"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.3/workgraph_0.3.3_linux_amd64.tar.gz"
      sha256 "d41fa8c8de00c700ba8c57fc62abd07d7b65f79d1f1a058241eaddb23c96b59a"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
