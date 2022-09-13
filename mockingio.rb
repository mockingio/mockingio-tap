# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockingio < Formula
  desc "mockingio is a mocking tool"
  homepage "https://github.com/mockingio/mockingio"
  version "0.0.26"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.26/mockingio_v0.0.26_darwin_amd64.tar.gz"
      sha256 "0d426ce35870273024360e9d79f10ef4867e00f30950cbb9f8916bc7834b8ed4"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.26/mockingio_v0.0.26_darwin_arm64.tar.gz"
      sha256 "3426614eb4f8024a87c2b53bc9e9adf8c427d8bf32933136a0c57fb3f86c57b0"

      def install
        bin.install "mockingio"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.26/mockingio_v0.0.26_linux_arm64.tar.gz"
      sha256 "cf2995e1145a8342b6bd432020e7683a7e047b7a70bce8f872675d6419ed57ad"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.26/mockingio_v0.0.26_linux_amd64.tar.gz"
      sha256 "ec58e10448150ee9604c14a14889fa2eab0fbefa5aa9b9d2e19e21f7e73c6584"

      def install
        bin.install "mockingio"
      end
    end
  end

  test do
    system "#{bin}/mockingio --version"
  end
end
