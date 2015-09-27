class Kcpassword < Formula
  desc "Enable OS X autologin"
  homepage "https://github.com/xfreebird/kcpassword"
  url "https://github.com/xfreebird/kcpassword/archive/1.0.0.tar.gz"
  sha256 "d9b028680d5d96ebc076925ab31e0fa92309e99d7a0496d9834242b5dd06a9a2"
  version "1.0.0"

  def install
    bin.install "kcpassword"
    bin.install "enable_autologin"
  end

  test do
    system "enable_autologin", "--version"
  end
end
