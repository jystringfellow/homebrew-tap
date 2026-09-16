class Workgraph < Formula
  desc "Local-first substrate for personal work intelligence"
  homepage "https://workgraph.pages.dev"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.1/workgraph_0.3.1_darwin_arm64.tar.gz"
      sha256 "676d69e670dd3f482cc5d446b301a194bc6e6f5bc4e1c7a9cc8c0fa3c3e31c85"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.1/workgraph_0.3.1_darwin_amd64.tar.gz"
      sha256 "7985cbbb9b5514983b327ce35e5a65bac48e797ea0de34da75ba3e8667d21f13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.1/workgraph_0.3.1_linux_arm64.tar.gz"
      sha256 "80b9366420761bbe2890ac6cbadda1610c8ad6f881c104ab1cce57b06458bafb"
    else
      url "https://github.com/jystringfellow/workgraph/releases/download/v0.3.1/workgraph_0.3.1_linux_amd64.tar.gz"
      sha256 "5316d561910399e6c53fc196b54ec7ddd61e2fbdc414e510f057200e32295e90"
    end
  end

  def install
    bin.install "workgraph"
  end

  test do
    assert_match "workgraph v#{version}", shell_output("#{bin}/workgraph version")
  end
end
