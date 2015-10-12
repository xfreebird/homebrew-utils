require 'formula'

class OclintDev < Formula
  homepage 'http://oclint.org'
  url 'http://archives.oclint.org/nightly/oclint-0.9.dev.d18b401-x86_64-darwin-14.5.0.tar.gz'
  version '0.9.dev.d18b401'
  sha1 '357182ca204e5740af2b6250911686a96fb8045a'

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
