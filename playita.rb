# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Playita < Formula
  desc "Space repetition in the terminal"
  homepage "https://github.com/carlosperez-dev/playita_cli"
  version "0.1.47"

  on_macos do
    url "https://github.com/carlosperez-dev/playita_cli/releases/download/v0.1.47/playita_cli_0.1.47_darwin_all.tar.gz"
    sha256 "36510c7b41f6c0fa9025c0df96ea096c36ff389b1f8bb696f4a5e4fd8603dc87"

    def install
      bin.install "playita"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/carlosperez-dev/playita_cli/releases/download/v0.1.47/playita_cli_0.1.47_linux_arm64.tar.gz"
      sha256 "f803fbb4491db7eb342292c6c0a450ff6c7f50111a0c6bc876d12d99a50cc86c"

      def install
        bin.install "playita"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/carlosperez-dev/playita_cli/releases/download/v0.1.47/playita_cli_0.1.47_linux_amd64.tar.gz"
      sha256 "091b18d3a9ea5da4981bc3aff258fd8d3d49959f1526329a3551ce62873991f3"

      def install
        bin.install "playita"
      end
    end
  end
end
