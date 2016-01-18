class MobileDevUpdate < Formula
  desc "Upgrade your's Mobile Dev machine software"
  homepage "https://github.com/xfreebird/mobile-dev-bootstrap"
  url "https://github.com/xfreebird/mobile-dev-bootstrap/archive/1.0.14.zip"
  sha256 "300cc26ded036bb8b6d90f27a6b5eb8f1b593ca63a23610f133e79977a45447d"
  version "1.0.14"

  def install
    FileUtils.ln_s "mobile-dev-update.sh", "mobile-dev-update"
    bin.install "mobile-dev-update.sh"
    bin.install "mobile-dev-update"
  end
end
