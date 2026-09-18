class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.8/workgraph_0.3.8_darwin_arm64.tar.gz"
      sha256 "ebc2648f3e30413bf1b2b59057917656e7e88f4b10a3a84837728dfec3e339f8"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.8/workgraph_0.3.8_darwin_amd64.tar.gz"
      sha256 "ee70f4ba94cc9f983073eb1a038786b541336f807065a907a8d3303efd1811e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.8/workgraph_0.3.8_linux_arm64.tar.gz"
      sha256 "c2c534dbf47c100ea2551ecb89f6b686c883cb985f9a26287ae04bd1c112182d"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.8/workgraph_0.3.8_linux_amd64.tar.gz"
      sha256 "3d87c582a687d9569927b0aee4eedf4e02be735ed8c40914cf4f26f4f3f51e42"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
