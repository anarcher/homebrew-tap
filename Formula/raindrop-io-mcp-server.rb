class RaindropIoMcpServer < Formula
  desc "Raindrop.io Media Control Protocol Server"
  homepage "https://github.com/anarcher/raindrop-io-mcp-server"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anarcher/raindrop-io-mcp-server/releases/download/v0.0.2/raindrop-io-mcp-server_0.0.2_darwin_amd64.tar.gz"
      sha256 "8747c5c6f85caf5af649436cbc69c6d596b1d23c157bd54b18208594b0cab298"

      def install
        bin.install "raindrop-io-mcp-server"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/anarcher/raindrop-io-mcp-server/releases/download/v0.0.2/raindrop-io-mcp-server_0.0.2_darwin_arm64.tar.gz"
      sha256 "4edefba89d314a6c59e2d6bf028bbea97ffa8f00a9f901f629e55801068c81fa"

      def install
        bin.install "raindrop-io-mcp-server"
      end
    end
  end

  test do
    system "#{bin}/raindrop-io-mcp-server", "version"
  end
end