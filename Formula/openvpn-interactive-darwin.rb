class OpenvpnInteractiveDarwin < Formula
  desc "Interactive OpenVPN management script for macOS with keychain integration"
  homepage "https://github.com/dornakv/openvpn-interactive-darwin"
  url "https://github.com/dornakv/openvpn-interactive-darwin/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "315bc5d515de8032a6cb0ad3f0f4b4ae4450b4635bdb7de2fdad2470577c47d2"
  license :unlicense

  depends_on "openvpn"
  depends_on :macos

  def install
    bin.install "openvpn-interactive-darwin.sh" => "openvpn-interactive-darwin"
  end

  test do
    # Just check help output works
    assert_match "Usage:", shell_output("#{bin}/openvpn-interactive-darwin --help 2>&1", 1)
  end
end
