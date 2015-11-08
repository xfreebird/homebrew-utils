class MobileCiUpdate < Formula
  desc "Upgrade your's Mobile CI machine software"
  homepage "https://github.com/xfreebird/mobile-ci-bootstrap"
  url "https://github.com/xfreebird/mobile-ci-bootstrap/archive/1.0.8.zip"
  sha256 "f1565d5e61d69eafc5ee9afc2c02bd53adf3832e32e3ea7dfe4c46aba70a1f51"
  version "1.0.8"

  def install
    FileUtils.ln_s "mobile-ci-update.sh", "mobile-ci-update"
    bin.install "mobile-ci-update.sh"
    bin.install "mobile-ci-update"
  end
end
