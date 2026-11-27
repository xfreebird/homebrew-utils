class EsemnbunCli < Formula
  desc "Electronic ID signing and local MCP command-line tools"
  homepage "https://esemnbun.md"
  url "https://esemnbun.md/packages/downloads/v0.2.15/esemnbun-0.2.15-macos-universal.tar.gz"
  version "0.2.15"
  sha256 "d28425d1d8ce6b9ba40e5f472430b3984c991b7176b1920fb922e5027c89627c"
  license "MIT"

  depends_on :macos
  on_macos do
    depends_on macos: :sequoia
  end

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
