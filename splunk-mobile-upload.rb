class SplunkMobileUpload < Formula
  desc "Upload iOS dSYM or Proguard mapping to Splunk MINT"
  homepage "https://github.com/xfreebird/splunk-mobile-upload"
  url "https://github.com/xfreebird/splunk-mobile-upload/archive/1.0.1.tar.gz"
  sha256 "adee43a6b8671a93e6ed8604d82e00677760abaab59531987779d67ff3dc48ed"
  version "1.0.1"

  def install
    bin.install "splunk-mobile-upload"
  end

  test do
    system "splunk-mobile-upload", "--version"
  end
end

