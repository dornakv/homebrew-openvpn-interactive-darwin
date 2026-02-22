class OpenvpnInteractiveDarwin < Formula
  desc "Interactive OpenVPN management script for macOS with keychain integration"
  homepage "https://github.com/dornakv/openvpn-interactive-darwin"
  url "https://github.com/dornakv/openvpn-interactive-darwin/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "a24a65d8e49b1a92453a20ad1a29e63417cbb0eafb36ad486f9195c469bc88c2"
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
