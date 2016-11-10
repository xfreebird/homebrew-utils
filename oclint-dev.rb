require 'formula'

class OclintDev < Formula
  homepage 'http://oclint.org'
  url 'https://github.com/oclint/oclint/releases/download/v0.10.1/oclint-0.10.1-x86_64-darwin-15.0.0.tar.gz'
  version '0.10.1'
  sha256 'dec7e0336d0e92210fcabc36b35d5f967eaba5f482e26edbf2a8b75301a69517'

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
