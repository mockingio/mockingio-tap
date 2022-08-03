# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockingio < Formula
  desc "mockingio is a mocking tool"
  homepage "https://github.com/mockingio/mockingio"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.7/mockingio_v0.0.7_darwin_arm64.tar.gz"
      sha256 "11e359bf098eeaa9e88702bac2c87ca3ee1be4d11c084b25ae232c25502fabd4"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.7/mockingio_v0.0.7_darwin_amd64.tar.gz"
      sha256 "b1475a9315e1d0c148be2af0e3fa1d3da4963e236697c1141828cc6b64d2c149"

      def install
        bin.install "mockingio"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.7/mockingio_v0.0.7_linux_arm64.tar.gz"
      sha256 "7167989d201268c94a835f4d8a71ac3fb24edd1496b8046918f7a0e96ac70f09"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.7/mockingio_v0.0.7_linux_amd64.tar.gz"
      sha256 "66935439f44d1a3854d6e588e98ff6175fdc9e99a18f868f238af56c5e0b37c6"

      def install
        bin.install "mockingio"
      end
    end
  end

  test do
    system "#{bin}/mockingio --version"
  end
end
