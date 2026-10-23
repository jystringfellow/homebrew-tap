class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.3/workgraph_0.5.3_darwin_arm64.tar.gz"
      sha256 "47ec1a6079d8d2250cbd0ab0ebea5f599d4d1e66de2ccc104e76bf2c7e4a404a"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.3/workgraph_0.5.3_darwin_amd64.tar.gz"
      sha256 "a2e408f9c162d29ca01810be673c1836ba9d9ac0b285153d1f57991b26c46b5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.3/workgraph_0.5.3_linux_arm64.tar.gz"
      sha256 "f148ad63a70a9cf2b3226e8201c3f02640692920349615420b3eeaa3e336fbe2"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.3/workgraph_0.5.3_linux_amd64.tar.gz"
      sha256 "d606e1d9121a495f74399f5538ce62e7a6650495b84fbeac491fc683c053e648"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
