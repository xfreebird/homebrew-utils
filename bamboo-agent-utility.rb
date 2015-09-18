class BambooAgentUtility < Formula
  desc "A Bamboo CI utility for installing or removing an agent on OS X"
  homepage "https://github.com/xfreebird/bamboo-agent-utility"
  url "https://github.com/xfreebird/bamboo-agent-utility/archive/1.0.0.tar.gz"
  sha256 "3f382bb8a7aa725257762a170d4d7566ab1925f83b97e01baec7e3ccf8b413f9"
  version "1.0.0"

  def install
    bin.install "bamboo-agent-utility"
  end

  test do
    system "bamboo-agent-utility", "--version"
  end
end
