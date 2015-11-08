class MobileDevUpdate < Formula
  desc "Upgrade your's Mobile Dev machine software"
  homepage "https://github.com/xfreebird/mobile-dev-bootstrap"
  url "https://github.com/xfreebird/mobile-dev-bootstrap/archive/1.0.9.zip"
  sha256 "18da7a1f73c998488c840fe49dc7a731a135e006bb4b508ad0922820e7bb3855"
  version "1.0.9"

  def install
    FileUtils.ln_s "mobile-dev-update.sh", "mobile-dev-update"
    bin.install "mobile-dev-update.sh"
    bin.install "mobile-dev-update"
  end
end
