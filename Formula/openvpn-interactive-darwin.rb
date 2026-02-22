class OpenvpnInteractiveDarwin < Formula
  desc "Interactive OpenVPN management script for macOS with keychain integration"
  homepage "https://github.com/dornakv/openvpn-interactive-darwin"
  url "https://github.com/dornakv/openvpn-interactive-darwin/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
