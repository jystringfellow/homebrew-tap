class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.5/workgraph_0.4.5_darwin_arm64.tar.gz"
      sha256 "3092b4864e629ac65e1d8b6be9141501d1107b8640bc09c792bcd727e90b2a3a"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.5/workgraph_0.4.5_darwin_amd64.tar.gz"
      sha256 "b575a51c8dae9dfdac0b2d58bb0fc3bb07a851689a980ed35d3655b22308f217"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.5/workgraph_0.4.5_linux_arm64.tar.gz"
      sha256 "6f0835a48ea2771490596a6523cbfc748e4ddcce0e97e6c03621491fcb35b2ed"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.5/workgraph_0.4.5_linux_amd64.tar.gz"
      sha256 "12e74210bfc31e0be418936ae5c8a852c21c961d30982a133b3f9c9dbe06e7c4"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
