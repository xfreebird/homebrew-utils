class MobileCiUpdate < Formula
  desc "Upgrade your's Mobile CI machine software"
  homepage "https://github.com/xfreebird/mobile-ci-bootstrap"
  url "https://github.com/xfreebird/mobile-ci-bootstrap/archive/1.0.10.zip"
  sha256 "626b95c7620d4778f180de4e13bee23fcaeaa8b5e62bbe162e5650f38d3a9aa0"
  version "1.0.10"

  def install
    FileUtils.ln_s "mobile-ci-update.sh", "mobile-ci-update"
    bin.install "mobile-ci-update.sh"
    bin.install "mobile-ci-update"
  end
end
