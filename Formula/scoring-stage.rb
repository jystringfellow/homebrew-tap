class ScoringStage < Formula
  desc "Run coding agents in isolated microVM sandboxes"
  homepage "https://github.com/jystringfellow/scoring-stage"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.10/stage_v0.0.1-rc.10_darwin_arm64.tar.gz"
      sha256 "643e76352ca41b9dbec543376e4e203acf9b483bf9d9e603878f6095b5db65d4"
    else
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.10/stage_v0.0.1-rc.10_darwin_amd64.tar.gz"
      sha256 "4647265f546e325a8e9b2a3c838d0de39d5835d85dcadedaa7e10f6a27a668b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.10/stage_v0.0.1-rc.10_linux_arm64.tar.gz"
      sha256 "e243efe9f352d4fcd8ed90358c64fb91d4127133257004127d48c53a7815444d"
    else
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.10/stage_v0.0.1-rc.10_linux_amd64.tar.gz"
      sha256 "54529dd0a8624e309e414b5f51670369d7cb30367515016c26a5311e5c564412"
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
