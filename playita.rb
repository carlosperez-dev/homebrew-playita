# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Playita < Formula
  desc "Space repetition in the terminal"
  homepage "https://github.com/carlosperez-dev/playita_cli"
  version "0.1.46"

  on_macos do
    url "https://github.com/carlosperez-dev/playita_cli/releases/download/v0.1.46/playita_cli_0.1.46_darwin_all.tar.gz"
    sha256 "963ebd1d256c59668897c4d71b14630e83971cb326fcaf3894f6673f5298d117"

    def install
      bin.install "playita"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/carlosperez-dev/playita_cli/releases/download/v0.1.46/playita_cli_0.1.46_linux_arm64.tar.gz"
      sha256 "2f12ef18b3c11e46e0dda42b1e8086d36cdde35c98c0450f1b351d1b1f1a3297"

      def install
        bin.install "playita"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/carlosperez-dev/playita_cli/releases/download/v0.1.46/playita_cli_0.1.46_linux_amd64.tar.gz"
      sha256 "130298d65fff55c802d2c4d005b06b0ddb4debc6e765bc1c25b244952a2de034"

      def install
        bin.install "playita"
      end
    end
  end
end
