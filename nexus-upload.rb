class NexusUpload < Formula
  desc "Upload any artefact to Nexus"
  homepage "https://github.com/xfreebird/nexus-upload"
  url "https://github.com/xfreebird/nexus-upload/archive/1.0.1.tar.gz"
  sha256 "045b83680efa36dbc0249937d67ecd73b3a9b9b9af47ff30686037de2be92a71"
  version "1.0.1"

  def install
    bin.install "nexus-upload"
  end

  test do
    system "nexus-upload", "--version"
  end
end
