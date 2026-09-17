class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.5/workgraph_0.3.5_darwin_arm64.tar.gz"
      sha256 "18b9cc91f262f676b6f3be0975c6b27f4e51845917d51fc0b900b73dd5b9b8f2"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.5/workgraph_0.3.5_darwin_amd64.tar.gz"
      sha256 "6c174f1fae84278a53dad98ee943e216ce77a18c635589e6b8d7c483f6143eaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.5/workgraph_0.3.5_linux_arm64.tar.gz"
      sha256 "4ae940b45a4bdb5cadc6f6471ba83297e859b5deb6c125daa673ade58b2c92a3"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.5/workgraph_0.3.5_linux_amd64.tar.gz"
      sha256 "d3870cb274f4265b38e76a27b5b76bf5b7630409ed87181b868307f8672ec261"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
