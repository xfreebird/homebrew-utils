class BambooAgentUtility < Formula
  desc "A Bamboo CI utility for installing or removing an agent on OS X"
  homepage "https://github.com/xfreebird/bamboo-agent-utility"
  url "https://github.com/xfreebird/bamboo-agent-utility/archive/1.0.0.tar.gz"
  sha256 "d92e583a6538055a0e89b37690eb372c578bb6a80c5042ae012cfa66b5dada31"
  version "1.0.0"

  def install
    bin.install "bamboo-agent-utility"
  end

  test do
    system "bamboo-agent-utility", "--version"
  end
end
