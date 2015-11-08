class MobileDevUpdate < Formula
  desc "Upgrade your's Mobile Dev machine software"
  homepage "https://github.com/xfreebird/mobile-dev-bootstrap"
  url "https://github.com/xfreebird/mobile-dev-bootstrap/archive/1.0.10.zip"
  sha256 "f6a061768ec69856d59d67e1e820a3edb2812cf28eb7eadb1f71d193134f3098"
  version "1.0.10"

  def install
    FileUtils.ln_s "mobile-dev-update.sh", "mobile-dev-update"
    bin.install "mobile-dev-update.sh"
    bin.install "mobile-dev-update"
  end
end
