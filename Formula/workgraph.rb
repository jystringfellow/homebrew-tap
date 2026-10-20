class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.8/workgraph_0.4.8_darwin_arm64.tar.gz"
      sha256 "96a06d615de9f6825f4a34b3972df90a4a532e4f9924e2a245593ff328e7a82e"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.8/workgraph_0.4.8_darwin_amd64.tar.gz"
      sha256 "6da1a3dfcb559d2d55989a00efae50c6dfa0ccbcf084be998de337d78c4f536d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.8/workgraph_0.4.8_linux_arm64.tar.gz"
      sha256 "6a06608e80e272e847cdb32f69aae7c7d0e20e733db103a53b214a18f5698337"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.8/workgraph_0.4.8_linux_amd64.tar.gz"
      sha256 "c556227b616f357a4f17f5d1e3c41175cdcce410e944502f826bebf66ea68319"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
