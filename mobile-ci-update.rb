class MobileCiUpdate < Formula
  desc "Upgrade your's Mobile CI machine software"
  homepage "https://github.com/xfreebird/mobile-ci-bootstrap"
  url "https://github.com/xfreebird/mobile-ci-bootstrap/archive/1.0.3.zip"
  sha256 "691a9ee6412a888bc27ea60332a8851f01155931ee15c4eb08e6dd8e36aa0896"
  version "1.0.3"

  def install
    FileUtils.ln_s "mobile-ci-update.sh", "mobile-ci-update"
    bin.install "mobile-ci-update.sh"
    bin.install "mobile-ci-update"
  end
end
