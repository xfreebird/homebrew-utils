require 'formula'

class OclintDev < Formula
  homepage 'http://oclint.org'
  url 'http://archives.oclint.org/nightly/oclint-0.9.dev.d18b401-x86_64-darwin-14.5.0.tar.gz'
  version '0.9.dev.d18b401'
  sha1 '6c14a116b1a87139f5b646f1e2119ba0aef717cb68853f1060c69d2197547d06'

  def install
    lib.install Dir['lib/clang']
    lib.install Dir['lib/oclint']
    bin.install Dir['bin/*']
  end

  def test
    system "echo \"int main() { return 0; }\" > #{prefix}/test.m"
    system "#{bin}/oclint #{prefix}/test.m -- -c"
  end
end
