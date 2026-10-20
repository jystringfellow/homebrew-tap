class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.7/workgraph_0.4.7_darwin_arm64.tar.gz"
      sha256 "6396d59935b5765906672710cee903d7dc9c8d396d6e7f13379e518c5e793344"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.7/workgraph_0.4.7_darwin_amd64.tar.gz"
      sha256 "2dacd0aa702bdbf11c17726f2de43330cf35cab7ce8477d8b3b6f664cb45c617"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.7/workgraph_0.4.7_linux_arm64.tar.gz"
      sha256 "3ac81d818dd1cb1ffb5cf0baa484e625b3eb7931a68d577ff39d299097c3ad9d"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.7/workgraph_0.4.7_linux_amd64.tar.gz"
      sha256 "f16fb96e9ee1f9cd6f44cf92d29bda82b0d212af00f1c2563e5fe3eb0122ddea"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
