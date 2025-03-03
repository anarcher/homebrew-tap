class RaindropIoMcpServer < Formula
  desc "Raindrop.io Media Control Protocol Server"
  homepage "https://github.com/anarcher/raindrop-io-mcp-server"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anarcher/raindrop-io-mcp-server/releases/download/v0.0.1/raindrop-io-mcp-server_0.0.1_darwin_amd64.tar.gz"
      sha256 "1c3d2753664cbf8108aa64ad0cbad20709d5ae9913aae3a9337046eef88beaae"

      def install
        bin.install "raindrop-io-mcp-server"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/anarcher/raindrop-io-mcp-server/releases/download/v0.0.1/raindrop-io-mcp-server_0.0.1_darwin_arm64.tar.gz"
      sha256 "da55fc96c6289e2217ae1ab99ceadbaaa2d59efca040f7e1e74a3df07bc2825b"

      def install
        bin.install "raindrop-io-mcp-server"
      end
    end
  end

  test do
    system "#{bin}/raindrop-io-mcp-server", "version"
  end
end