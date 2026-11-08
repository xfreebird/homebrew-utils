class EsemnbunCli < Formula
  desc "Electronic ID signing and local MCP command-line tools"
  homepage "https://esemnbun.md"
  url "https://github.com/xfreebird/smartcard/releases/download/v0.2.6/esemnbun-0.2.6-macos-universal.tar.gz"
  version "0.2.6"
  sha256 "ecbafa38fabc1909d2106e68fe3d086a2e61f54c7dc773c218baf7e5053dad49"
  license "MIT"

  depends_on :macos
  depends_on macos: :sequoia

  def install
    bin.install "esemnbun", "esemnbun-mcp"
  end

  def caveats
    <<~EOS
      MCP runs over stdio: esemnbun-mcp --root documents=/absolute/path
      Signing requires a compatible reader and card. Unattended signing is opt-in.
      No background service is enabled by this formula.
    EOS
  end

  test do
    assert_match "esemnbun", shell_output("#{bin}/esemnbun --version")
  end
end
