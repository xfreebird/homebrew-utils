class MobileCiUpdate < Formula
  desc "Upgrade your's Mobile CI machine software"
  homepage "https://github.com/xfreebird/mobile-ci-bootstrap"
  url "https://github.com/xfreebird/mobile-ci-bootstrap/archive/1.0.14.zip"
  sha256 "74fb43f1e62d87ec60e14056f12a5d1949ef281c368c7dec2b49559e4aee0bc5"
  version "1.0.14"

  def install
    FileUtils.ln_s "mobile-ci-update.sh", "mobile-ci-update"
    bin.install "mobile-ci-update.sh"
    bin.install "mobile-ci-update"
  end
end
