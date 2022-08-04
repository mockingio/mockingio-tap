# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockingio < Formula
  desc "mockingio is a mocking tool"
  homepage "https://github.com/mockingio/mockingio"
  version "0.0.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.11/mockingio_v0.0.11_darwin_amd64.tar.gz"
      sha256 "b00157bd005d4a31a4256f2b69628c776ca17281246668042111938ac078002a"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.11/mockingio_v0.0.11_darwin_arm64.tar.gz"
      sha256 "db04722ac6e357d615ef17ab2eca3fe91fd0997a453ea56df7c7e1892b58d1ad"

      def install
        bin.install "mockingio"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.11/mockingio_v0.0.11_linux_arm64.tar.gz"
      sha256 "d03303e1e0558f92ee0a3985a9b767aa145e1870b7b9d2073a85872640f5eff2"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.11/mockingio_v0.0.11_linux_amd64.tar.gz"
      sha256 "1361ba680f60bf1494372b1b12d75dfd3bbba6eec0f947833c22b60c1597285b"

      def install
        bin.install "mockingio"
      end
    end
  end

  test do
    system "#{bin}/mockingio --version"
  end
end
