# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Kamut < Formula
  desc "kamut"
  homepage "https://github.com/anarcher/kamut"
  license ""
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anarcher/kamut/releases/download/v0.0.5/kamut_0.0.5_darwin_arm64.tar.gz"
      sha256 "7ed78a896dac97593dd2081558ae634f0a235573818d6d7c8d89593839130170"

      def install 
        bin.install "kamut"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anarcher/kamut/releases/download/v0.0.5/kamut_0.0.5_linux_amd64.tar.gz"
      sha256 "5b48620c1d906567b67b87d744bc99b504f014c1d70c1c766238b30ff4adaa56"

      def install
        bin.install "kamut"
      end
    end
  end

  test do
    system "#{bin}/kamut version"
  end
end