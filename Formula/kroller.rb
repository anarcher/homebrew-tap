# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Kroller < Formula
  desc "kroller"
  homepage "https://github.com/anarcher/kroller"
  license ""
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anarcher/kroller/releases/download/v0.3.1/kroller_0.3.1_darwin_amd64.tar.gz"
      sha256 "d291096fad4618f3fb3acdebd4557e4e7e10222a4ce32d4e77cca65521745b82"

      def install
        bin.install "kroller"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/anarcher/kroller/releases/download/v0.3.1/kroller_0.3.1_darwin_arm64.tar.gz"
      sha256 "ccfbeb13338d150dcf71232a0edc9b7d48d4ec9c9ec5eea96e5fb6eb29635fe9"

      def install 
        bin.install "kroller"
      end
    end
  end

  test do
    system "#{bin}/kroller version"
  end

end
