class ScoringStage < Formula
  desc "Run coding agents in isolated microVM sandboxes"
  homepage "https://github.com/jystringfellow/scoring-stage"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.7/stage_v0.0.1-rc.7_darwin_arm64.tar.gz"
      sha256 "5795df95206e85c20c0a56ed572d2dfc92ee3d6d23eafc10d6edf48406bea7cf"
    else
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.7/stage_v0.0.1-rc.7_darwin_amd64.tar.gz"
      sha256 "46509382e905602f715fae3be4fe8924794adce594f6e7ad291c38c033a8ecb5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.7/stage_v0.0.1-rc.7_linux_arm64.tar.gz"
      sha256 "a670ea4e0519bb47bfc152497ef2f5cd373870af6045be8585895dc2a26c5ca5"
    else
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.7/stage_v0.0.1-rc.7_linux_amd64.tar.gz"
      sha256 "5c2b202af54112b7566062fdc2b83669ad7af17b16c82a449dafd730ce5ab805"
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
