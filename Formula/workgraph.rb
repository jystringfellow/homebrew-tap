class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.6/workgraph_0.4.6_darwin_arm64.tar.gz"
      sha256 "6b88c32dc3f5df8c527a5707e84517aa7170790757e561145f3b8ceaff121034"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.6/workgraph_0.4.6_darwin_amd64.tar.gz"
      sha256 "b2a02699553ac786e3b70cc671085c43ceedac4949b3720f07342b9a3fbfa40a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.6/workgraph_0.4.6_linux_arm64.tar.gz"
      sha256 "a5d5e8c4d7e4a6877234dd07bf5e8e82f76760c362cedf40c7e5cabbefa1c927"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.6/workgraph_0.4.6_linux_amd64.tar.gz"
      sha256 "28a704567c4daff1fb07db10e03dddfec0e87bb0e3fe54fa5f20b49843a71937"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
