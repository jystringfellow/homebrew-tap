class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.6.0/workgraph_0.6.0_darwin_arm64.tar.gz"
      sha256 "1fb30db1054c2b679dde8c4203f00a4adffa1e43b190e1c0e946ab2b1e099fc4"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.6.0/workgraph_0.6.0_darwin_amd64.tar.gz"
      sha256 "db297d7bad63de45f1134ad46953e70cca5672c23153797a4736bea8f0e990b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.6.0/workgraph_0.6.0_linux_arm64.tar.gz"
      sha256 "1107ae8a2c02e799d29371858303792e5f66dfa81a34a9523aefef01bf8b1072"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.6.0/workgraph_0.6.0_linux_amd64.tar.gz"
      sha256 "b5d65048aed7fd5ce744a396bf9c30cd5bd5525031474dbe3b762095c3e165ea"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
