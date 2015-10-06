class Iosbuilder < Formula
  desc "A script for building, testing and analyzing iOS projects"
  homepage "https://github.com/xfreebird/iosbuilder"
  url "https://github.com/xfreebird/iosbuilder/archive/2.0.3.zip"
  sha256 "4d88d649ed5a316d6bd7e50127f4f51bd4afc9f01d7eddc430690a21b0cb35df"
  version "2.0.3"
  
  depends_on :xcode

  def install
    FileUtils.ln_s "iosbuilder.sh", "iosbuilder"
    bin.install "iosbuilder.sh"
    bin.install "iosbuilder"

    user = ENV['USER']
    keychain = "/Users/#{user}/Library/Keychains/iosbuilder.keychain"
    unless File.exist?(keychain)
      system "security", "create-keychain", "-p", "", "#{keychain}"
      system "security", "set-keychain-settings", "#{keychain}"
      system "bash", "-c", "HOME='/Users/#{user}' security list-keychains -s #{keychain} '/Users/#{user}/Library/Keychains/login.keychain'"
    end
  end

  test do
    system "iosbuilder.sh", "--version"
  end

  def caveats; <<-EOS.undent
    Please install ocunit2junit, xcpretty and cocoapods:
    sudo gem install ocunit2junit xcpretty cocoapods
    Also oclint and xctool.
    The iosbuilder.keychain is located at ~/Library/Keychains/iosbuilder.keychain.
    And it has a blank password (e.g. it has no password)
    EOS
  end
end
