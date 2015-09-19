class MachineInfoService < Formula
  desc "OS X build machine info service"
  homepage "https://github.com/xfreebird/osx-build-machine-info-service"
  url "https://github.com/xfreebird/osx-build-machine-info-service/archive/1.0.1.tar.gz"
  sha256 "cb0183934e3dab81dec5465f04a1422e65aac4b78744ee2385afd428552c6f24"
  version "1.0.1"

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