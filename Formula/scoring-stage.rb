class ScoringStage < Formula
  desc "Run coding agents in isolated microVM sandboxes"
  homepage "https://github.com/jystringfellow/scoring-stage"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.5/stage_v0.0.1-rc.5_darwin_arm64.tar.gz"
      sha256 "2387b7b74c3a8f0c45b39a287078e9c22899c2313969df3d09ea44c2559caeed"
    else
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.5/stage_v0.0.1-rc.5_darwin_amd64.tar.gz"
      sha256 "d2cf49f9816d027549190fe6ecda199b755fd43a26ac8400566f8fbeeb8ce5a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.5/stage_v0.0.1-rc.5_linux_arm64.tar.gz"
      sha256 "d6c696616e6d3eba0fa0fc9d79b00ac570c94979fb8fc200bc11b730bdf51f28"
    else
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.5/stage_v0.0.1-rc.5_linux_amd64.tar.gz"
      sha256 "ddde47f5f1a6ea2ff1b601fac2f60da76e5f4335975144984e398a8238d7a0e1"
    end
  end

  def install
    bin.install "stage"
    doc.install "README.md"
  end

  def caveats
    <<~EOS
      stage drives Docker Sandboxes through the sbx command, which is installed separately.
      Run `stage setup` to check this machine.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stage --version")
  end
end
