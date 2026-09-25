class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.3/workgraph_0.4.3_darwin_arm64.tar.gz"
      sha256 "1ec88d51eee19ca95a8e9a105c53a4627ad6bbae1558fb03ea760711dce91f86"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.3/workgraph_0.4.3_darwin_amd64.tar.gz"
      sha256 "1b3f4611130adc103b6e270217ae5059d15b196724f829d0735f45232f006e0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.3/workgraph_0.4.3_linux_arm64.tar.gz"
      sha256 "385c7a2e99dba5b8acfaf3967030fd05ef0311a3e25059e06fe9222f2c3a37a4"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.4.3/workgraph_0.4.3_linux_amd64.tar.gz"
      sha256 "a1ccce36408344001d76e2e7f49f58f76435cbb7a5bd30407f5f467bf345e92c"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
