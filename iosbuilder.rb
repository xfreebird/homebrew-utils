class Iosbuilder < Formula
  desc "A script for building, testing and analyzing iOS projects"
  homepage "https://github.com/xfreebird/iosbuilder"
  url "https://github.com/xfreebird/iosbuilder/archive/2.0.1.tar.gz"
  sha256 "3605c59a51e4cebd91a54509b025a402c514ceb6e10e3584686a04657afb1bae"
  version "2.0.1"

  depends_on "xctool"
  depends_on "gcovr"
  depends_on "caskroom/cask/brew-cask"
  depends_on :xcode

  def install
    system "ln", "-s", "iosbuilder.sh", "iosbuilder"
    bin.install "iosbuilder.sh"
    bin.install "iosbuilder"
    system "brew-cask", "install", "oclint", "--force"
    system "sudo", "gem", "install", "ocunit2junit", "xcpretty", "cocoapods"
  end

  test do
    system "iosbuilder.sh", "--version"
  end

  def caveats; <<-EOS.undent
    caveats
    EOS
  end
end
