class RaindropIoMcpServer < Formula
  desc "Raindrop.io Media Control Protocol Server"
  homepage "https://github.com/anarcher/raindrop-io-mcp-server"
  version "0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anarcher/raindrop-io-mcp-server/releases/download/v0.0.0/raindrop-io-mcp-server_0.0.0_darwin_amd64.tar.gz"
      sha256 "07df08dcf02830e0bb0d38fbeb15c2b2c33a6889a4d5a4aabf6d33fa2b2acea0"

      def install
        bin.install "raindrop-io-mcp-server"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/anarcher/raindrop-io-mcp-server/releases/download/v0.0.0/raindrop-io-mcp-server_0.0.0_darwin_arm64.tar.gz"
      sha256 "35ee16ffead9cbeb9e51acf7ed3f02b15df44ceff2ab06fb25b1a4a3b91bd72c"

      def install
        bin.install "raindrop-io-mcp-server"
      end
    end
  end

  test do
    system "#{bin}/raindrop-io-mcp-server", "version"
  end
end