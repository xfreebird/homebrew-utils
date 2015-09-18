class BambooAgentUtility < Formula
  desc "A Bamboo CI utility for installing or removing an agent on OS X"
  homepage "https://github.com/xfreebird/bamboo-agent-utility"
  url "https://github.com/xfreebird/bamboo-agent-utility/archive/1.0.0.tar.gz"
  sha256 "8e5b5ad5f03395a5d31cf115dc9c2736a532af8c5a31b0df0acf89676d8a4ab8"
  version "1.0.0"

  def install
    bin.install "bamboo-agent-utility"
  end

  test do
    system "bamboo-agent-utility", "--version"
  end
end
