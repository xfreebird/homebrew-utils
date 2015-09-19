class RefreshIosProfiles < Formula
  desc "Downloads and installs all iOS provisioning profiles from Apple Developer Portal."
  homepage "https://github.com/xfreebird/refresh-ios-profiles"
  url "https://github.com/xfreebird/refresh-ios-profiles/archive/1.0.2.tar.gz"
  sha256 "cdd3b736e16242b55f1e98d292646ee7fb8ee481e9c47e88576bbc216aae7141"
  version "1.0.2"

  def install
    bin.install "refresh-ios-profiles"
  end

  test do
    system "refresh-ios-profiles", "--version"
  end
end

