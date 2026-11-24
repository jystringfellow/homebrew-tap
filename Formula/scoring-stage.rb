class ScoringStage < Formula
  desc "Run coding agents in isolated microVM sandboxes"
  homepage "https://github.com/jystringfellow/scoring-stage"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.8/stage_v0.0.1-rc.8_darwin_arm64.tar.gz"
      sha256 "ebc5a13acc007ef22506568f4a608ed7a4a39b886b50607648c3a393492011d6"
    else
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.8/stage_v0.0.1-rc.8_darwin_amd64.tar.gz"
      sha256 "7b803a70e3c44d2163635da382925a68898f1820bf8bb4d9f4a394065e5eb1a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.8/stage_v0.0.1-rc.8_linux_arm64.tar.gz"
      sha256 "ff5fa40d53c7ce7b51ad7b28d3d8fecc99bc747aea71573b7c7101d5feb89540"
    else
      url "https://github.com/jystringfellow/scoring-stage/releases/download/v0.0.1-rc.8/stage_v0.0.1-rc.8_linux_amd64.tar.gz"
      sha256 "9aeb6b98ef18be16ae369dfd4327e79c25adaf8e9c00883a5754759f3ff02859"
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
