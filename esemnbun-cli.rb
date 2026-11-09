class EsemnbunCli < Formula
  desc "Electronic ID signing and local MCP command-line tools"
  homepage "https://esemnbun.md"
  url "https://esemnbun.md/packages/downloads/v0.2.9/esemnbun-0.2.9-macos-universal.tar.gz"
  version "0.2.9"
  sha256 "1c9a332729ae260fcb198d4ce311642254aa80f192c91ac420f85e895fd4f530"
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
