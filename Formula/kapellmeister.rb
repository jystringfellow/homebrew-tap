class Kapellmeister < Formula
  desc "Conduct ensembles of coding agents through plan, implement, review and gate"
  homepage "https://github.com/jystringfellow/kapellmeister"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.8/km_v0.0.1-rc.8_darwin_arm64.tar.gz"
      sha256 "0749fb9e37c4d5574183e8a660639476d91b96515fd03c612302dc382bdc3ac7"
    else
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.8/km_v0.0.1-rc.8_darwin_amd64.tar.gz"
      sha256 "dd1c88f31662386b2d07a097f4c61bcd4d210d2d851de48803474278edbaaae7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.8/km_v0.0.1-rc.8_linux_arm64.tar.gz"
      sha256 "d2929e95568f78384d0a8d2fed0cc5ee3068ec4fa50e5e52506436ac59b09c25"
    else
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.8/km_v0.0.1-rc.8_linux_amd64.tar.gz"
      sha256 "4d6b7bb00315ecc8f285838070de2d595251cd8e00b0a088b7384ef7320e2846"
    end
  end

  def install
    bin.install "km"
    doc.install "README.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/km version")
  end
end
