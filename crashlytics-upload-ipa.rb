class CrashlyticsUploadIpa < Formula
  desc "Upload an IPA to Crashlytics without Crashlytics.framework"
  homepage "https://github.com/xfreebird/crashlytics-upload-ipa"
  url "https://github.com/xfreebird/crashlytics-upload-ipa/archive/1.0.0.tar.gz"
  sha256 "d72ec979aca7b448226a9fcb01850d0d98a9c7ffdd191294b881682adccd4547"
  version "1.0.0"

  def install
    bin.install "crashlytics-submit"
    bin.install "crashlytics-upload-ipa"
  end

  test do
    system "crashlytics-upload-ipa", "--version"
  end
end
