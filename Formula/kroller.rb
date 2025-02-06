# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Kroller < Formula
  desc "kroller"
  homepage "https://github.com/anarcher/kroller"
  license ""
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anarcher/kroller/releases/download/v0.3.0/kroller_0.3.0_darwin_amd64.tar.gz"
      sha257 "2db3cb5f9c63bfc1688b8da119c2b4b96f17ddc17b940dd1bb11e5c41df1ff73"

      def install
        bin.install "kroller"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/anarcher/kroller/releases/download/v0.3.0/kroller_0.3.0_darwin_arm64.tar.gz"
      sha256 "7aca99a16d10b8aae89c859e80d03607e6d59057741df8f503e99a6f0ea66287"

      def install 
        bin.install "kroller"
      end
    end
  end

  test do
    system "#{bin}/kroller version"
  end

end
