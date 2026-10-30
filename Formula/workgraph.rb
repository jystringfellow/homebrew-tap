class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.7.2/workgraph_0.7.2_darwin_arm64.tar.gz"
      sha256 "3d02b009d7d2f6b7dbb710a7facd1f6d95aa585d1b9fd23fa1e06f48c626b5d3"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.7.2/workgraph_0.7.2_darwin_amd64.tar.gz"
      sha256 "e743a3e8294620ee5dbba235e873254c13b026211a79100ecd09868621e74ec3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.7.2/workgraph_0.7.2_linux_arm64.tar.gz"
      sha256 "08fbe973b208b31cca9a4ff384b13a12732d52a8b5e41a68ba40f2cb2b2ef67d"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.7.2/workgraph_0.7.2_linux_amd64.tar.gz"
      sha256 "4abd0bb083a9b6fbe94f1699a6fad956c8afef51da4ae6803d29aa4974a71099"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
