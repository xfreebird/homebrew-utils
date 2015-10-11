class MobileDevUpdate < Formula
  desc "Upgrade your's Mobile Dev machine software"
  homepage "https://github.com/xfreebird/mobile-dev-bootstrap"
  url "https://github.com/xfreebird/mobile-dev-bootstrap/archive/1.0.3.zip"
  sha256 "d1b40dd8cf20b2070cf70eb91bfa91dfb5129755a2bb531885fed46ed87cbeee"
  version "1.0.3"

  def install
    FileUtils.ln_s "mobile-dev-update.sh", "mobile-dev-update"
    bin.install "mobile-dev-update.sh"
    bin.install "mobile-dev-update"
  end
end
