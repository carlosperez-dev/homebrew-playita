# typed: false
# frozen_string_literal: true

class Playita < Formula
  desc "Space repetition in the terminal"
  homepage "https://github.com/carlosperez-dev/playita_cli"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/carlosperez-dev/playita_cli/releases/download/v1.0.0/playita_cli_1.0.0_darwin_amd64.tar.gz"
      sha256 "1958f2a59ff06dd2247953318c017a82bf0bdf476a6b16f00c9fb70cc148d21d"

      def install
        bin.install "playita"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/carlosperez-dev/playita_cli/releases/download/v1.0.0/playita_cli_1.0.0_darwin_arm64.tar.gz"
      sha256 "5931d8da9e1b077307bd3e1e70d2048c05359e50bb27ae01e924b52a6abb0294"

      def install
        bin.install "playita"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/carlosperez-dev/playita_cli/releases/download/v1.0.0/playita_cli_1.0.0_linux_amd64.tar.gz"
      sha256 "c88c5d3ce069a975c4392e7add58752150919ef2542bf311a54e4706b8f2074e"

      def install
        bin.install "playita"
      end
    end
  end
end
