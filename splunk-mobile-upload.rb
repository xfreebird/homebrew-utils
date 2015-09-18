class SplunkMobileUpload < Formula
  desc "Upload iOS dSYM or Proguard mapping to Splunk MINT"
  homepage "https://github.com/xfreebird/splunk-mobile-upload"
  url "https://github.com/xfreebird/splunk-mobile-upload/archive/1.0.0.tar.gz"
  sha256 "161da0e2ec2181250490c0d9336948df3c15bc61feab6bf3a6c6b79fe3828b6e"
  version "1.0.0"

  def install
    bin.install "splunk-mobile-upload"
  end

  test do
    system "splunk-mobile-upload", "--version"
  end
end

