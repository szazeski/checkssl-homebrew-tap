# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Checkssl < Formula
  desc "Simple tool to check or monitor TLS/SSL certificates are working."
  homepage "https://www.checkssl.org/"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/<repo_owner>/<repo_name>/releases/download/v0.4.3/checkssl_0.4.3_Darwin_arm64.tar.gz"
      sha256 "d616826e6a712d6c8b5f451461a7bbbd253391fcf7a60b900660d3f277792c26"

      def install
        bin.install "checkssl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/<repo_owner>/<repo_name>/releases/download/v0.4.3/checkssl_0.4.3_Darwin_x86_64.tar.gz"
      sha256 "382a45a75555d5afd282624809949d705c5c67e79b19b5666b70881cd2c4833c"

      def install
        bin.install "checkssl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/<repo_owner>/<repo_name>/releases/download/v0.4.3/checkssl_0.4.3_Linux_arm64.tar.gz"
      sha256 "1f30d43ab120b3117ac0a482a1a53be6eff1fab8207e0801d18b2b5be645874e"

      def install
        bin.install "checkssl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/<repo_owner>/<repo_name>/releases/download/v0.4.3/checkssl_0.4.3_Linux_x86_64.tar.gz"
      sha256 "d9cd8799e876824e127a78ecda2b6b0cbcf4fb45661e2e400c18f26eec67bf7d"

      def install
        bin.install "checkssl"
      end
    end
  end

  depends_on "git"
  depends_on "go"

  test do
    system "#{bin}/checkssl checkssl.org"
    ...
  end
end