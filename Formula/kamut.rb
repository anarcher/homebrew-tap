# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Kamut < Formula
  desc "kamut"
  homepage "https://github.com/anarcher/kamut"
  license ""
  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anarcher/kamut/releases/download/v0.0.0/kamut_0.0.0_darwin_arm64.tar.gz"
      sha256 "3ac319c9587ceeb02f611a9d463eb6fe364035eb0ca5ba1211eb42b7a3e0efa1"

      def install 
        bin.install "kamut"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anarcher/kamut/releases/download/v0.0.0/kamut_0.0.0_linux_amd64.tar.gz"
      sha256 "d4ee8ba076e81e10132d369f6169e9af36ea4d9e1480cfac866992bcad9bf14f"

      def install
        bin.install "kamut"
      end
    end
  end

  test do
    system "#{bin}/kamut version"
  end
end
