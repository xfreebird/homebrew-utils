class MobileDevUpdate < Formula
  desc "Upgrade your's Mobile Dev machine software"
  homepage "https://github.com/xfreebird/mobile-dev-bootstrap"
  url "https://github.com/xfreebird/mobile-dev-bootstrap/archive/1.0.7.zip"
  sha256 "5e21a04c1720a7d8c51b941fc6e6a4440a55faa3699a4f4edd8f80f11f808b9a"
  version "1.0.7"

  def install
    FileUtils.ln_s "mobile-dev-update.sh", "mobile-dev-update"
    bin.install "mobile-dev-update.sh"
    bin.install "mobile-dev-update"
  end
end
