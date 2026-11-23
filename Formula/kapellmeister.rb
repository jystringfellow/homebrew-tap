class Kapellmeister < Formula
  desc "Conduct ensembles of coding agents through plan, implement, review and gate"
  homepage "https://github.com/jystringfellow/kapellmeister"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.5/km_v0.0.1-rc.5_darwin_arm64.tar.gz"
      sha256 "35eaa8d7158c12f8570ad43af8400b1433dba5f5973df389aa8a07709b4ecb64"
    else
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.5/km_v0.0.1-rc.5_darwin_amd64.tar.gz"
      sha256 "fc49e74352ad573e0308aae896f1e381c92aa04f2e808ec3d74d29033b5f8120"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.5/km_v0.0.1-rc.5_linux_arm64.tar.gz"
      sha256 "4ef00633c2f51e8b7fdc5787693ddf9c38f3520e3210e3f67a27b7b7861e47ae"
    else
      url "https://github.com/jystringfellow/kapellmeister/releases/download/v0.0.1-rc.5/km_v0.0.1-rc.5_linux_amd64.tar.gz"
      sha256 "b79fcc9e16fedc9507e89d8d121e6312d526c71e13ab54264fbedda8a308dec8"
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
