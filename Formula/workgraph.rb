class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.0/workgraph_0.3.0_darwin_arm64.tar.gz"
      sha256 "288748bcb31c71eff989dfbcaa62f6ba458d296291a5460102be96ce38d6f913"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.0/workgraph_0.3.0_darwin_amd64.tar.gz"
      sha256 "9a6af42bd54930f2efcc1432cd91bdd9db3fa82c76d6e79746090b55f87c766f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.0/workgraph_0.3.0_linux_arm64.tar.gz"
      sha256 "f33c8b5161237ca42ff63aaaf9d5fc7bfebafdcca2bd5aeefdd8bf74aaefb8d2"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.0/workgraph_0.3.0_linux_amd64.tar.gz"
      sha256 "e74e41835b1d018d37156fe50f0b707ea7cf4bd8292edb7420e7c197f193f172"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
