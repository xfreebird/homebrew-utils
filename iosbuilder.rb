class Iosbuilder < Formula
  desc "A script for building, testing and analyzing iOS projects"
  homepage "https://github.com/xfreebird/iosbuilder"
  url "https://github.com/xfreebird/iosbuilder/archive/2.0.2.tar.gz"
  sha256 "b2ab9eebbd60e5e49d82425d39e3cb252179807fa12fd833aaa208f867c39759"
  version "2.0.2"

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
      system "security", "create-keychain", "-p", "", "#{keychain}"
      system "bash", "-c", "HOME='/Users/#{user}' open #{keychain}"
    end
  end

  test do
    system "iosbuilder.sh", "--version"
  end

  def caveats; <<-EOS.undent
    Please install ocunit2junit, xcpretty and cocoapods:
    sudo gem install ocunit2junit xcpretty cocoapods
    The iosbuilder.keychain was created in ~/Library/Keychains/iosbuilder.keychain.
    And it has a blank password (e.g. it has no password)
    EOS
  end
end
