class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.4/workgraph_0.4.4_darwin_arm64.tar.gz"
      sha256 "10bf6cb8ffc4647d3136d890bb4bdcafb583516c0865760d75efeaeca3ecd001"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.4/workgraph_0.4.4_darwin_amd64.tar.gz"
      sha256 "bcda2fc511aaa607fe0c47d385da1b4cd22a120760e656c212869916c8d2890d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.4/workgraph_0.4.4_linux_arm64.tar.gz"
      sha256 "54b8e03670d7bc2a3218a87c5f08e6d3c2a2e64526d7c39543497093b910f655"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.4/workgraph_0.4.4_linux_amd64.tar.gz"
      sha256 "f733e60e6659360a39c7c39e3ace64d03ece12fb4c86007871230cb553e11e6b"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
