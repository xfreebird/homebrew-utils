class RefreshIosProfiles < Formula
  desc "Downloads and installs all iOS provisioning profiles from Apple Developer Portal."
  homepage "https://github.com/xfreebird/refresh-ios-profiles"
  url "https://github.com/xfreebird/refresh-ios-profiles/archive/1.0.6.tar.gz"
  sha256 "4052c8e79a28f349a5b488a746cff0e91dfff5901b8025761dcc30ea2e672292"
  version "1.0.6"

  def install
    bin.install "refresh-ios-profiles"
  end

  test do
    system "refresh-ios-profiles", "--version"
  end
end

