class MachineInfoService < Formula
  desc "OS X build machine info service"
  homepage "https://github.com/xfreebird/osx-build-machine-info-service"
  url "https://github.com/xfreebird/osx-build-machine-info-service/archive/1.0.2.tar.gz"
  sha256 "cd6e46ea08b52ca6ccd7609130dc6242884c9353a25ec2ac4cf5785522c002e4"
  version "1.0.2"

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