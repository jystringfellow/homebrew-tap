class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.1.0/workgraph_0.1.0_darwin_arm64.tar.gz"
      sha256 "4b1d42377217ee3dd712991e781c5a37ab274156cd45e0a754253c6b4c142c64"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.1.0/workgraph_0.1.0_darwin_amd64.tar.gz"
      sha256 "4082119262323045137629084100c69591798eae69932548cdad80f42edbbc99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.1.0/workgraph_0.1.0_linux_arm64.tar.gz"
      sha256 "faf408c925c96533c40b10635d014c35dde083adcdf3925e8cbff693a4f4107c"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.1.0/workgraph_0.1.0_linux_amd64.tar.gz"
      sha256 "734bb7d8ac533b42447c020cea5d24dc1bd033c9dd2898760b621ca8e3f7b984"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
