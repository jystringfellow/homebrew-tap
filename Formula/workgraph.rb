class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.4/workgraph_0.3.4_darwin_arm64.tar.gz"
      sha256 "1b817354d8fd84abdefb75c823e66af1532aec9acc3618c652f2f1fb1fce8905"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.4/workgraph_0.3.4_darwin_amd64.tar.gz"
      sha256 "1cc1ad83bbf8062d9c71fe33775798dfe2063f341702bfa5a62a5bde6fcbb49e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.4/workgraph_0.3.4_linux_arm64.tar.gz"
      sha256 "a3128aa59a5c3d0a9b2d815db5c317a99281fb38a04a44d2a50595615073f327"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.4/workgraph_0.3.4_linux_amd64.tar.gz"
      sha256 "9d062f0b770edf541a47edb3d5425eeb4344e0c467537b0266faf03e89a00e29"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
