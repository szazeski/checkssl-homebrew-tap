# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Checkfreespace < Formula
  desc "Simple tool to check free space on a drive."
  homepage "https://checkcli.com/checkfreespace/"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/szazeski/checkfreespace/releases/download/v1.0.2/checkfreespace_1.0.2_Darwin_arm64.tar.gz"
      sha256 "a6718bf2197f75b27d6c7a596f2c366f456f38fa227cd67e1cac6a64dfbacea6"

      def install
        bin.install "checkfreespace"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/szazeski/checkfreespace/releases/download/v1.0.2/checkfreespace_1.0.2_Darwin_x86_64.tar.gz"
      sha256 "cd241de87420784a8c34dec512c70e3a370fa010ea0d58d5a4889f079881b68b"

      def install
        bin.install "checkfreespace"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/szazeski/checkfreespace/releases/download/v1.0.2/checkfreespace_1.0.2_Linux_arm64.tar.gz"
      sha256 "ce62e803b1d53c2bca6684bcd61d3f8a4ae60aae33f06c3b2c9124dfd4f897e8"

      def install
        bin.install "checkfreespace"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/szazeski/checkfreespace/releases/download/v1.0.2/checkfreespace_1.0.2_Linux_x86_64.tar.gz"
      sha256 "3d9c046732f2695bb7d744cf8ef263bcf47df8362c847120d1c845c0ebfc6b93"

      def install
        bin.install "checkfreespace"
      end
    end
  end

  test do
    system "#{bin}/checkfreespace"
  end
end