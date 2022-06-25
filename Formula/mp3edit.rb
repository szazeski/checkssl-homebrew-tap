# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mp3edit < Formula
  desc "Simple tool to check or monitor TLS/SSL certificates are working."
  homepage "https://www.checkssl.org/"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/szazeski/mp3edit/releases/download/v1.0.3/mp3edit_1.0.3_Darwin_x86_64.tar.gz"
      sha256 "ea7e712536fd95af62a470ea61615a8d9cba7fe38cc35359e2e6cf70b8372cb9"

      def install
        bin.install "mp3edit"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/szazeski/mp3edit/releases/download/v1.0.3/mp3edit_1.0.3_Darwin_arm64.tar.gz"
      sha256 "4a4f840686fb049f8ddd9a79067df88e8958173e4e74b5c0e335b5e4e777945b"

      def install
        bin.install "mp3edit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/szazeski/mp3edit/releases/download/v1.0.3/mp3edit_1.0.3_Linux_arm64.tar.gz"
      sha256 "87fd993c1d4bde276812dcc346c96f804cc0df859fb079bc4bc5a4e97516ab8a"

      def install
        bin.install "mp3edit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/szazeski/mp3edit/releases/download/v1.0.3/mp3edit_1.0.3_Linux_x86_64.tar.gz"
      sha256 "41a90486bb2a2c932d4b4744a58102b5a7f8e34dbd93535598814974dec16ab9"

      def install
        bin.install "mp3edit"
      end
    end
  end

  test do
    system "#{bin}/mp3edit -version"
  end
end