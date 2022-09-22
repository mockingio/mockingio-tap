# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockingio < Formula
  desc "mockingio is a mocking tool"
  homepage "https://github.com/mockingio/mockingio"
  version "0.0.39"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.39/mockingio_v0.0.39_darwin_amd64.tar.gz"
      sha256 "953d9a806cd7d184eb42c636e748e8a0cff8413a92c4e68ece956d42173ec2a3"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.39/mockingio_v0.0.39_darwin_arm64.tar.gz"
      sha256 "796a0fe88e20f9b6f6f455bbda46ab3b9c7030e05b29c87363daee7a99559865"

      def install
        bin.install "mockingio"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.39/mockingio_v0.0.39_linux_amd64.tar.gz"
      sha256 "b3eafb84179eef4b445cd296ae0a4af79aff9be1185517dbfd15bd231aea991e"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.39/mockingio_v0.0.39_linux_arm64.tar.gz"
      sha256 "a70372f3933c98e09eccdef60524fb0adc64f51092666bc23d11173fecbfe93a"

      def install
        bin.install "mockingio"
      end
    end
  end

  test do
    system "#{bin}/mockingio --version"
  end
end
