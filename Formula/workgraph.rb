class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.1/workgraph_0.5.1_darwin_arm64.tar.gz"
      sha256 "a248d23da41f5a569cb1785640d7f8ea23948c4a6a45ad6f5f0572b03e0b4c64"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.1/workgraph_0.5.1_darwin_amd64.tar.gz"
      sha256 "baf1c186457065683e6de716b5457fa09ef937cb108b786f997773686f4025e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.1/workgraph_0.5.1_linux_arm64.tar.gz"
      sha256 "b8f38453271acf9170f16ce7d234e917ab8bc035204b28d804c55b5cb2b64b14"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.1/workgraph_0.5.1_linux_amd64.tar.gz"
      sha256 "626b4f98772a68d6f5610d4b88093e85be995151a1d8a24a7383115245d68faf"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
