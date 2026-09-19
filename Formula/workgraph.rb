class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.10/workgraph_0.3.10_darwin_arm64.tar.gz"
      sha256 "73b975acbdd57a19c8cb93ee667f1e2d688011142277d6f22179226310fc6ed4"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.10/workgraph_0.3.10_darwin_amd64.tar.gz"
      sha256 "a27a1df1009e3bb924a7c3e61825c0d2e51b82c2678e956ad3e0e69902936510"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.10/workgraph_0.3.10_linux_arm64.tar.gz"
      sha256 "48364fdfc408b516b94fc5eed773bc2cf264d935d4d60c03043189c35049854b"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.10/workgraph_0.3.10_linux_amd64.tar.gz"
      sha256 "57f8e5ec301fb9f03d683f0a1f250f24cf673a175d0482276dd4e8c02da6a193"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
