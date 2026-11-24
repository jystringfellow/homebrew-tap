class ScoringStage < Formula
  desc "Run coding agents in isolated microVM sandboxes"
  homepage "https://github.com/jystringfellow/scoring-stage"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.6/stage_v0.0.1-rc.6_darwin_arm64.tar.gz"
      sha256 "a4df544154619091d40fc293eb4e6cd6754f43eec74539193c2124880baaea68"
    else
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.6/stage_v0.0.1-rc.6_darwin_amd64.tar.gz"
      sha256 "10b76052ebd3bf8021f85ea671027a6be8f6bb7eaded7ba367e4c3f62a99a82d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.6/stage_v0.0.1-rc.6_linux_arm64.tar.gz"
      sha256 "019886e1daa7d46ecbca6a39e1174e2dd250df2f5952ecb291c38ee09106c84f"
    else
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.6/stage_v0.0.1-rc.6_linux_amd64.tar.gz"
      sha256 "2f9e6eed7690b58a5017be808cb54523913364748e3ea4443635a83c0d767fc4"
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
