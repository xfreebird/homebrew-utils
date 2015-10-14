class RefreshIosProfiles < Formula
  desc "Downloads and installs all iOS provisioning profiles from Apple Developer Portal."
  homepage "https://github.com/xfreebird/refresh-ios-profiles"
  url "https://github.com/xfreebird/refresh-ios-profiles/archive/1.0.3.tar.gz"
  sha256 "158c3b48af31d8d897ec6fd41b905ccf293f89ecb1886f346360e2551316bc70"
  version "1.0.3"

  def install
    bin.install "refresh-ios-profiles"
  end

  test do
    system "refresh-ios-profiles", "--version"
  end
end

