# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Kamut < Formula
  desc "kamut"
  homepage "https://github.com/anarcher/kamut"
  license ""
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anarcher/kamut/releases/download/v0.0.4/kamut_0.0.4_darwin_arm64.tar.gz"
      sha256 "62509eb72c436b6ac8dbe66a68d6b7aab22dfedf2b85bac282ca3dc0bb182b56"

      def install 
        bin.install "kamut"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anarcher/kamut/releases/download/v0.0.4/kamut_0.0.4_linux_amd64.tar.gz"
      sha256 "b61fa258f021ce2c3cee8bd38a7d1dba81a99e017f8fb19b542d4866abbe8864"

      def install
        bin.install "kamut"
      end
    end
  end

  test do
    system "#{bin}/kamut version"
  end
end