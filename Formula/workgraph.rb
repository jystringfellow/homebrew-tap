class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.2/workgraph_0.3.2_darwin_arm64.tar.gz"
      sha256 "a213af43b7aca49a262811cc9f45c5904747a8a6d2ca0aa5d9eb17f8d4362728"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.2/workgraph_0.3.2_darwin_amd64.tar.gz"
      sha256 "d9f01063869136f0362a707e63ebbabde4e03c28be8bbea72acc09dd2a0309d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.2/workgraph_0.3.2_linux_arm64.tar.gz"
      sha256 "e2959d687d2718ad0f786f0f7aca02468ee29cc1654ed27f3f7082fc0bb3f316"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.2/workgraph_0.3.2_linux_amd64.tar.gz"
      sha256 "59e52cd5a05c5f5cb2e1c881c6a994c48889d5641c06e10094ae602fb9059ffa"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
