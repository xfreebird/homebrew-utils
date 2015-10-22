class MachineInfoService < Formula
  desc "OS X build machine info service"
  homepage "https://github.com/xfreebird/osx-build-machine-info-service"
  url "https://github.com/xfreebird/osx-build-machine-info-service/archive/1.0.5.tar.gz"
  sha256 "17fa510ff24448c2f4ff387d8de4d27f4ca9369aae60bba5d7dcd9b0cdca8618"
  version "1.0.5"

  depends_on "node"

  def install
    bin.install "bin/info-service-helper"
    bin.install "bin/machine-info"
    share.install "share/httpd.conf"
    share.install "share/index.html"
    libexec.install "libexec/websocketd.js"
  end

  test do
    system "true"
  end
end