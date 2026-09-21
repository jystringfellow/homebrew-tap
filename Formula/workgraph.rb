class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.1/workgraph_0.4.1_darwin_arm64.tar.gz"
      sha256 "b060c1c824f4567a1c940cb77e2eba927919b8a8e67237e57f34bbb9baf4b95c"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.1/workgraph_0.4.1_darwin_amd64.tar.gz"
      sha256 "9e1ac39cb4fcefbbbc35b5e6d360cb94522746d60a6ccf9bf989213ac1d61b37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.1/workgraph_0.4.1_linux_arm64.tar.gz"
      sha256 "6eb227b19bde0ea1655acb06f28d92854c5349e29957f2d8928ea31b5d07448a"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.1/workgraph_0.4.1_linux_amd64.tar.gz"
      sha256 "99722933c4e874e171fb1b96f226d4d7166698d013cf72123b55ac7c02d28f11"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
