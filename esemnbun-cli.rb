class EsemnbunCli < Formula
  desc "Electronic ID signing and local MCP command-line tools"
  homepage "https://esemnbun.md"
  url "https://esemnbun.md/packages/downloads/v0.2.10/esemnbun-0.2.10-macos-universal.tar.gz"
  version "0.2.10"
  sha256 "645fccb972cf391c76ff3134fea0c0552c51697111b50893a3fd214522ffb33b"
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
