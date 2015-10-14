class RefreshIosProfiles < Formula
  desc "Downloads and installs all iOS provisioning profiles from Apple Developer Portal."
  homepage "https://github.com/xfreebird/refresh-ios-profiles"
  url "https://github.com/xfreebird/refresh-ios-profiles/archive/1.0.4.tar.gz"
  sha256 "a5543893db849e5fd42b86b613e17e6aefca9d92d557e8d8e4ad6869c3d470b9"
  version "1.0.4"

  def install
    bin.install "refresh-ios-profiles"
  end

  test do
    system "refresh-ios-profiles", "--version"
  end
end

