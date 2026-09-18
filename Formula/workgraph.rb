class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.7/workgraph_0.3.7_darwin_arm64.tar.gz"
      sha256 "7085228c7dfa80044bdc831a4598a7fb53f3afd004e09d4d359ad0c52c30dca8"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.7/workgraph_0.3.7_darwin_amd64.tar.gz"
      sha256 "0711152bc04891f0bef7dadd0b0e2d63767c2d2b26c6a5f2fe038c4a2f69c151"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.7/workgraph_0.3.7_linux_arm64.tar.gz"
      sha256 "f163dd2485819b699462a195aef206d23df03cba02753240ac8602a395a1af16"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.7/workgraph_0.3.7_linux_amd64.tar.gz"
      sha256 "318ea85249c1349ce8312199c10085ce6f28d3518240f4d0ab7e97af11e9ca08"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
