class Kcpassword < Formula
  desc "Enable OS X autologin"
  homepage "https://github.com/xfreebird/kcpassword"
  url "https://github.com/xfreebird/kcpassword/archive/1.1.0.tar.gz"
  sha256 "318afc8f1dadf4bcce60b7f83dc4009d37ec45124c04cb0346c762aaa1b2d6d5"
  version "1.1.0"

  def install
    bin.install "kcpassword"
    bin.install "enable_autologin"
  end

  test do
    system "enable_autologin", "--version"
  end
end
