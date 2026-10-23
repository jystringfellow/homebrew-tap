class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.2/workgraph_0.5.2_darwin_arm64.tar.gz"
      sha256 "46bf3cc7839a5cc99ff9f3ea197d51c2355ac5d8f5e5dd4ac91fe67a3f8813a8"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.2/workgraph_0.5.2_darwin_amd64.tar.gz"
      sha256 "412f2abfc0c1b70c4a9288f26215defd70d48bba4ed7ffec346127f6f3645ea8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.2/workgraph_0.5.2_linux_arm64.tar.gz"
      sha256 "e4d5924005f8ec42a2629d7567f065fde0e013b92aceaf834e7f7180d76d9714"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.2/workgraph_0.5.2_linux_amd64.tar.gz"
      sha256 "0a60653dc3689a6d9c6d25041811a69f04d90c90a1719a3eef41a33a12d49fa7"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
