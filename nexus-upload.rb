class NexusUpload < Formula
  desc "Upload any artefact to Nexus"
  homepage "https://github.com/xfreebird/nexus-upload"
  url "https://github.com/xfreebird/nexus-upload/archive/1.0.0.tar.gz"
  sha256 "fe4b126c77dfed1e993e3a8cbe57619f37da9bd346d0e5c05d9f8b3ac75bcccc"
  version "1.0.0"

  def install
    bin.install "nexus-upload"
  end

  test do
    system "nexus-upload", "--version"
  end
end
