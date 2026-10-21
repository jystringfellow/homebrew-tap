class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.0/workgraph_0.5.0_darwin_arm64.tar.gz"
      sha256 "346ee585de4ddee95a9ea6382b487e6ab866da678f8bace27de3fe42877c26f2"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.0/workgraph_0.5.0_darwin_amd64.tar.gz"
      sha256 "2b4bca3c6fcf67bed6236a87a47f536e63155821765db6b7abf5be81a8857296"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.0/workgraph_0.5.0_linux_arm64.tar.gz"
      sha256 "326285338eaf9785e38ac021ce1ac31db4177b120df9641e407d99f6e3fd6ce8"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.5.0/workgraph_0.5.0_linux_amd64.tar.gz"
      sha256 "4409cc057a04d96b7c49aa7e61b9863db6bc00e3c623136cb20cdf718cbcc8c8"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
