require 'formula'

class OclintDev < Formula
  homepage 'http://oclint.org'
  url 'https://github.com/oclint/oclint/releases/download/v0.10.1/oclint-0.10.1-x86_64-darwin-15.0.0.tar.gz'
  version '0.10.1'
  sha1 'e9111f1a79aac54af17f62c38be280bcefd54ba3cdc09091ef127d906abfac83'

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
