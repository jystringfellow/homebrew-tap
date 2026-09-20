class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.0/workgraph_0.4.0_darwin_arm64.tar.gz"
      sha256 "6795934de98c0e4caa7e7be6fcb8f56f4385d6c33a2c75f4a1429e36bb691c15"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.0/workgraph_0.4.0_darwin_amd64.tar.gz"
      sha256 "fa397475edda7b46d966b704bb676a36f9582bfef26bb7d35ab1b188ae0ad73b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.0/workgraph_0.4.0_linux_arm64.tar.gz"
      sha256 "5ef0aa0cc1220aa436fda330ed9eaa10f4a4d5ec500d18fccefb9b4fe7a0a03b"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.0/workgraph_0.4.0_linux_amd64.tar.gz"
      sha256 "bde280dbc05da996d0be3b984ee0216026e75a3b14d208b105099282e58869e3"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
