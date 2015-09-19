class MachineInfoService < Formula
  desc "OS X build machine info service"
  homepage "https://github.com/xfreebird/osx-build-machine-info-service"
  url "https://github.com/xfreebird/osx-build-machine-info-service/archive/1.0.3.tar.gz"
  sha256 "9f63d120487a67a57d1f264d5236943ccf447fa47cf38aef5262ea4f863fc307"
  version "1.0.3"

  depends_on "node"

  def install
    bin.install "info-service-helper"
    bin.install "machine-info"
    share.install "httpd.conf"
    share.install "index.html"
    libexec.install "websocketd.js"
  end

  test do
    system "true"
  end
end