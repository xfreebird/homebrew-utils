class MobileCiUpdate < Formula
  desc "Upgrade your's Mobile CI machine software"
  homepage "https://github.com/xfreebird/mobile-ci-bootstrap"
  url "https://github.com/xfreebird/mobile-ci-bootstrap/archive/1.0.12.zip"
  sha256 "b9d26ac85c9fe7475fb06df486fe50a6fb6316b0d6c7c72048540787b2f71cc2"
  version "1.0.12"

  def install
    FileUtils.ln_s "mobile-ci-update.sh", "mobile-ci-update"
    bin.install "mobile-ci-update.sh"
    bin.install "mobile-ci-update"
  end
end
