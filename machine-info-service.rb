class MachineInfoService < Formula
  desc "OS X build machine info service"
  homepage "https://github.com/xfreebird/osx-build-machine-info-service"
  url "https://github.com/xfreebird/osx-build-machine-info-service/archive/1.0.0.tar.gz"
  sha256 "161da0e2ec2181250490c0d9336948df3c15bc61feab6bf3a6c6b79fe3828b6e"
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