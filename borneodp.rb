# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Borneodp < Formula
  desc "Command Line Interface (CLI) for managing Borneo Data Plane Deployments"
  homepage "https://www.borneo.io/"
  version "v3.12.0"

  URL_DARWIN="https://github.com/borneodata/homebrew-tap/releases/download/v3.12.0/deploy-dataplane_Darwin_all.tar.gz"
  URL_ARM64="https://github.com/borneodata/homebrew-tap/releases/download/v3.12.0/deploy-dataplane_Linux_arm64.tar.gz"
  URL_X86="https://github.com/borneodata/homebrew-tap/releases/download/v3.12.0/deploy-dataplane_Linux_x86_64.tar.gz"
  SHA_DARWIN="5217bbf70d6046ae53d8516c35cd6d5ed36779a8805f24b0eb0ec13185dfaeb9"
  SHA_ARM64="d92d6054f684372d67ae9a6004effa49d26b10c11ec35591df69d2e2ac283225"
  SHA_X86="79ddca110ed17df58d0e13600008e05cf70a1f59db0479180213d30ed4a3fe9d"

  on_macos do
    url URL_DARWIN
    sha256 SHA_DARWIN

    def install
      bin.install "deploy-dataplane" => "borneodp"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url URL_ARM64
      sha256 SHA_ARM

      def install
        bin.install "deploy-dataplane" => "borneodp"
      end
    end
    if Hardware::CPU.intel?
      url URL_X86
      sha256 SHA_X86

      def install
        bin.install "deploy-dataplane" => "borneodp"
      end
    end
  end
end
