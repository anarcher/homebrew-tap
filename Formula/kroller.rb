# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Kroller < Formula
  desc "kroller"
  homepage "https://github.com/anarcher/kroller"
  license ""
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anarcher/kroller/releases/download/v0.2.0/kroller_0.2.0_darwin_amd64.tar.gz"
      sha256 "bb7235d021acf375c630d5c2041b108f2f08e6edcd31f97086bb8422397d87ec"

      def install
        bin.install "kroller"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/anarcher/kroller/releases/download/v0.2.0/kroller_0.2.0_darwin_arm64.tar.gz"
      sha256 "7a9e2ee734d4ea35e3534a489e7eaa1d4bd37ca704dbd63a8a62af747bd0ee72"

      def install 
        bin.install "kroller"
      end
    end
  end

  test do
    system "#{bin}/kroller version"
  end

end
