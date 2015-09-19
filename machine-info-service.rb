class MachineInfoService < Formula
  desc "OS X build machine info service"
  homepage "https://github.com/xfreebird/osx-build-machine-info-service"
  url "https://github.com/xfreebird/osx-build-machine-info-service/archive/1.0.4.tar.gz"
  sha256 "39aef7516ec4e55691fcd71aeebaae646c967036d5318eb04adf35da4c110c1c"
  version "1.0.4"

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