class Kcpassword < Formula
  desc "Enable OS X autologin"
  homepage "https://github.com/xfreebird/kcpassword"
  url "https://github.com/xfreebird/kcpassword/archive/1.0.0.tar.gz"
  sha256 "611620edd25f93b2f118f08ca60d1a7c6ed55f86195bab41da9f2011aae854f6"
  version "1.0.0"

  def install
    bin.install "kcpassword"
    bin.install "enable_autologin"
  end

  test do
    system "enable_autologin", "--version"
  end
end
