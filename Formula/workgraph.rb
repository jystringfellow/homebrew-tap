class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.9/workgraph_0.4.9_darwin_arm64.tar.gz"
      sha256 "de36e3203327cb361c18bff22ea80e56bb998815cc1f6afff16a1d813e92353e"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.9/workgraph_0.4.9_darwin_amd64.tar.gz"
      sha256 "a0291b489e04344579ba693ffdca533aed765c339d98d248df2acb10d6f5cc7f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.9/workgraph_0.4.9_linux_arm64.tar.gz"
      sha256 "9f7df7b7413a1e7d39998ec9f424bb23f04b0af4d49dd59829f58a127cbcb886"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.9/workgraph_0.4.9_linux_amd64.tar.gz"
      sha256 "921b0864358cbbe13de1914908a98ae9140456243a6f11400ce7ede0ba0b2a21"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
