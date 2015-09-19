class MachineInfoService < Formula
  desc "OS X build machine info service"
  homepage "https://github.com/xfreebird/osx-build-machine-info-service"
  url "https://github.com/xfreebird/osx-build-machine-info-service/archive/1.0.0.tar.gz"
  sha256 "c3149cc0859b9f1acad3b0b011466a0917113908086b8ceffbf43276b7182432"
  version "1.0.0"

  def install
    libexec.install Dir["*"]
    bin.install "info-service-helper"
    bin.install "machine-info"
  end

  test do
    system "true"
  end
end