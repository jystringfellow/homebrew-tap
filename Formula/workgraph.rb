class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.9/workgraph_0.3.9_darwin_arm64.tar.gz"
      sha256 "bb1e270141218fe4c4993450b43f5eadf5d0a279a3488f462454b42a9e35e0fd"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.9/workgraph_0.3.9_darwin_amd64.tar.gz"
      sha256 "7dcf5808073c1d622a7236009e2c787beda4c59aa7a8b00e0037e8e87c3c54cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.9/workgraph_0.3.9_linux_arm64.tar.gz"
      sha256 "b43d6badcf24b4a76efaccf1e24d9205d3d01f82d5c969b2e7e22ae0ed3fdba7"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.9/workgraph_0.3.9_linux_amd64.tar.gz"
      sha256 "5ec4463b792d06d38f9ba4a161f0c94673d85f4382289f1761553ce12b01a874"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
