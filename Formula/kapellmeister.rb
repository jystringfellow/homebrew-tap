class Kapellmeister < Formula
  desc "Conduct ensembles of coding agents through plan, implement, review and gate"
  homepage "https://github.com/jystringfellow/kapellmeister"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.9/km_v0.0.1-rc.9_darwin_arm64.tar.gz"
      sha256 "a0e687544422c5006039e4654091d94b414b08539d39b84a9ae036938fb98488"
    else
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.9/km_v0.0.1-rc.9_darwin_amd64.tar.gz"
      sha256 "f291d8ef78b3a50d9ecc0401296268564c08d3fad174e7121ea0b40ca4329050"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.9/km_v0.0.1-rc.9_linux_arm64.tar.gz"
      sha256 "1b38a080b786b33fe75ffa714884231cde15d1fbe388c807f411c3e9795a10cb"
    else
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.9/km_v0.0.1-rc.9_linux_amd64.tar.gz"
      sha256 "e47b2b6b8f491d3507b0868e521697782266a3a4f1792acd5bd14206eb2238c5"
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
