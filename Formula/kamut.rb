# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Kamut < Formula
  desc "kamut"
  homepage "https://github.com/anarcher/kamut"
  license ""
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anarcher/kamut/releases/download/v0.0.2/kamut_0.0.2_darwin_arm64.tar.gz"
      sha256 "df0b3103acde3f3376c5953a43e2a10fd956ed52ea4aecc4031280e771f18a15"

      def install 
        bin.install "kamut"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anarcher/kamut/releases/download/v0.0.2/kamut_0.0.2_linux_amd64.tar.gz"
      sha256 "cc92ca5cf17dbfee598fd90d13eed769567e6959ebe86a4bdb889dc46a65f0d3"

      def install
        bin.install "kamut"
      end
    end
  end

  test do
    system "#{bin}/kamut version"
  end
end