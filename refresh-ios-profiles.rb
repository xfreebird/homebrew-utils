class RefreshIosProfiles < Formula
  desc "Downloads and installs all iOS provisioning profiles from Apple Developer Portal."
  homepage "https://github.com/xfreebird/refresh-ios-profiles"
  url "https://github.com/xfreebird/refresh-ios-profiles/archive/1.0.7.tar.gz"
  sha256 "073ae40012742229606051b809a1cb161170135d335b926d738fbbebd19ac05a"
  version "1.0.7"

  def install
    bin.install "refresh-ios-profiles"
  end

  test do
    system "refresh-ios-profiles", "--version"
  end
end

