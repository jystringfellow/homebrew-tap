class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.2/workgraph_0.4.2_darwin_arm64.tar.gz"
      sha256 "d9a28d87a23e9d0644524838495107ed304b3a6f1fb308dc81b420430d776879"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.2/workgraph_0.4.2_darwin_amd64.tar.gz"
      sha256 "4bb2a26074e9b641e9b8f748b6966180ba5c1480c8fb5ab0ef76d5e467d99f76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.2/workgraph_0.4.2_linux_arm64.tar.gz"
      sha256 "f2f5c68ed912c31a0cd1d8f87a6fa9752a66db7a6b5955851eddd6a0c1fbe36f"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.2/workgraph_0.4.2_linux_amd64.tar.gz"
      sha256 "3e5cbf2992a61e6e621f5a08c607bb749f716fa81ac5b9c200777867893fc895"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
