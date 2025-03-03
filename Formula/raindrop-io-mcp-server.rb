class RaindropIoMcpServer < Formula
  desc "Raindrop.io Media Control Protocol Server"
  homepage "https://github.com/anarcher/raindrop-io-mcp-server"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anarcher/raindrop-io-mcp-server/releases/download/v0.0.1/raindrop-io-mcp-server_0.0.1_darwin_amd64.tar.gz"
      sha256 "864b7a8e8f46c1beb5c9d5e62972fb4180f99c0b5a622c55d61334dd703f00c5"

      def install
        bin.install "raindrop-io-mcp-server"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/anarcher/raindrop-io-mcp-server/releases/download/v0.0.1/raindrop-io-mcp-server_0.0.1_darwin_arm64.tar.gz"
      sha256 "31615b32f82c776d6c2f4e06956ea30daf16d931a33faf266343aad9d016549c"

      def install
        bin.install "raindrop-io-mcp-server"
      end
    end
  end

  test do
    system "#{bin}/raindrop-io-mcp-server", "version"
  end
end