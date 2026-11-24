class Kapellmeister < Formula
  desc "Conduct ensembles of coding agents through plan, implement, review and gate"
  homepage "https://github.com/jystringfellow/kapellmeister"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.6/km_v0.0.1-rc.6_darwin_arm64.tar.gz"
      sha256 "b07881230da255ae420b18132fd5abb07e995d264a16186a3e044ffc2cff3a54"
    else
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.6/km_v0.0.1-rc.6_darwin_amd64.tar.gz"
      sha256 "de3e1c0ecfbc889428a2f7a7eb0866c429f8999b2eaf3000e0a198c45674a5f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.6/km_v0.0.1-rc.6_linux_arm64.tar.gz"
      sha256 "cb86a7799d314582ea17c187cad60b8fd42f4af1cda2fd26b1eac2605fca1ca1"
    else
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.6/km_v0.0.1-rc.6_linux_amd64.tar.gz"
      sha256 "348e91adf09a85d40b8a039bbd68e89d3fd145d9a81535cc14bd76efb2e86210"
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
