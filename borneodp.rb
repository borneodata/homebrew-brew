# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Borneodp < Formula
  desc "Command Line Interface (CLI) for managing Borneo Data Plane Deployments"
  homepage "https://www.borneo.io/"
  version "v3.10.0"

  URL_DARWIN="https://github.com/borneodata/homebrew-tap/releases/download/v3.10.0/homebrew-tap_Darwin_all.tar.gz"
  URL_ARM64="https://github.com/borneodata/homebrew-tap/releases/download/v3.10.0/homebrew-tap_Linux_arm64.tar.gz"
  URL_X86="https://github.com/borneodata/homebrew-tap/releases/download/v3.10.0/homebrew-tap_Linux_x86_64.tar.gz"
  SHA_DARWIN="edf3e71dd83c3021cacf2b641c271331e38924723e4542638c0f13ef040e5e05"
  SHA_ARM64="998fb5c559ea19648a8fe776dfc47f31e75068fb2c4efa1af9c12c88b0c9e29f"
  SHA_X86="f469f4967fe0c0e1700aa01116dc246158291108ecd4c82696da98a056947df9"

  on_macos do
    url URL_DARWIN
    sha256 SHA_DARWIN

    def install
      bin.install "homebrew-tap" => "borneodp"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url URL_ARM64
      sha256 SHA_ARM

      def install
        bin.install "homebrew-tap" => "borneodp"
      end
    end
    if Hardware::CPU.intel?
      url URL_X86
      sha256 SHA_X86

      def install
        bin.install "homebrew-tap" => "borneodp"
      end
    end
  end
end
