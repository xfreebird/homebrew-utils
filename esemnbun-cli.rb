class EsemnbunCli < Formula
  desc "Electronic ID signing and local MCP command-line tools"
  homepage "https://esemnbun.md"
  url "https://esemnbun.md/packages/downloads/v0.2.11/esemnbun-0.2.11-macos-universal.tar.gz"
  version "0.2.11"
  sha256 "5a10f063fd70dd2add676205e5b6b4bad023e644043784cd66c26c4920dbec17"
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
