class Kcpassword < Formula
  desc "Enable OS X autologin"
  homepage "https://github.com/xfreebird/kcpassword"
  url "https://github.com/xfreebird/kcpassword/archive/1.0.0.tar.gz"
  sha256 "97630ed7fb0a310fdd6b25d2a100f2657b5b5426238883711a62d41a62bfc63e"
  version "1.0.0"

  def install
    bin.install "kcpassword"
    bin.install "enable_autologin"
  end

  test do
    system "enable_autologin", "--version"
  end
end
