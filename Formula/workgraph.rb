class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.7.0/workgraph_0.7.0_darwin_arm64.tar.gz"
      sha256 "f7fbea5cf1325431e8996a4e85f8eb0b384af01158661ce69c0b3d7e80523200"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.7.0/workgraph_0.7.0_darwin_amd64.tar.gz"
      sha256 "fbce4721e2676cafa452eef287848029f37c36b8ab56ba8fb6a4acdb825b3389"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.7.0/workgraph_0.7.0_linux_arm64.tar.gz"
      sha256 "4dc9dadd673a6111bd411af4187c8a2157031d60ee7b9a3a69cf3ca910b25b2a"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.7.0/workgraph_0.7.0_linux_amd64.tar.gz"
      sha256 "794d7e9f6a570c7300999a229da2ca43769867da51e22fbb2dbc0ca1c7996e96"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
