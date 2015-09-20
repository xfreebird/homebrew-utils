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
    FileUtils.ln_s "iosbuilder.sh", "iosbuilder"
    bin.install "iosbuilder.sh"
    bin.install "iosbuilder"
    system "brew-cask", "install", "oclint"
    user = ENV['USER']
    keychain = "/Users/#{user}/Library/Keychains/iosbuilder.keychain"
    unless File.exist?(keychain)
      system "security", "create-keychain", "-p", "''", "#{keychain}"
      system "open", "#{keychain}"
    end
  end

  test do
    system "iosbuilder.sh", "--version"

  end

  def caveats; <<-EOS.undent
    The iosbuilder.keychain was created in ~/Library/Keychains/iosbuilder.keychain.
    To unlock the keychain use a blank password (e.g. it has no password)

    Please install Ruby gems manually by running:
        sudo gem install ocunit2junit xcpretty cocoapods
    EOS
  end
end
