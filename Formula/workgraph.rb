class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.6/workgraph_0.3.6_darwin_arm64.tar.gz"
      sha256 "524daff0e15cdc48fc2b9f3001e91c42f928f4a8dc977f56b7b821be0ce6793a"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.6/workgraph_0.3.6_darwin_amd64.tar.gz"
      sha256 "723c18312d1d638c4c5c74268576d188c6daec8d9c97500ca43315f32e286ccc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.6/workgraph_0.3.6_linux_arm64.tar.gz"
      sha256 "f1587fd608dfee029401d27023092eb2093bbb7b2167a5b08b371577ca13b9dd"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.6/workgraph_0.3.6_linux_amd64.tar.gz"
      sha256 "2a455d8fe2a5ff3033bce57d85a90a3575ddd7646c700703492fa4fcceba0637"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
