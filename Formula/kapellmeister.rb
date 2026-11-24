class Kapellmeister < Formula
  desc "Conduct ensembles of coding agents through plan, implement, review and gate"
  homepage "https://github.com/jystringfellow/kapellmeister"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.7/km_v0.0.1-rc.7_darwin_arm64.tar.gz"
      sha256 "cd653d4760c6173080ae15eb7536db0cc7231c1ba008078ae33396b90b7fdd06"
    else
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.7/km_v0.0.1-rc.7_darwin_amd64.tar.gz"
      sha256 "0985cf17a9b13a6e835150314d6cbef25147c9e87ba9edbefb0e6e03ae4508df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.7/km_v0.0.1-rc.7_linux_arm64.tar.gz"
      sha256 "0865594287c0a6b12bb3957050882371f0ad6f1ade6ce24981c1b3e611e6f6c8"
    else
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.7/km_v0.0.1-rc.7_linux_amd64.tar.gz"
      sha256 "fbd7609139cd9a4ad4762ab1a8a35f30116ef5e8513ce9c1f8a05c7c7c9f8113"
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
