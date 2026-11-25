class ScoringStage < Formula
  desc "Run coding agents in isolated microVM sandboxes"
  homepage "https://github.com/jystringfellow/scoring-stage"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.9/stage_v0.0.1-rc.9_darwin_arm64.tar.gz"
      sha256 "dd77c65043f700f81de56c0484ff71871673dd9cc140a3399b077adf384bf0dc"
    else
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.9/stage_v0.0.1-rc.9_darwin_amd64.tar.gz"
      sha256 "e706785da9d77ec19daa47721c88871f7ac8fc7d53bc72926a2500d384d91866"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.9/stage_v0.0.1-rc.9_linux_arm64.tar.gz"
      sha256 "97538f032d48e17b7f9d8fdde3f7cd3dc54e10e8e585d4cf3c7ad0ba85bc4afd"
    else
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.9/stage_v0.0.1-rc.9_linux_amd64.tar.gz"
      sha256 "320016a8449a5f2b9cb32ce83b67a62514167fe84f2999ab9ecf872871d10e61"
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
