# typed: false
# frozen_string_literal: true

class Playita < Formula
  desc "Space repetition in the terminal"
  homepage "https://github.com/carlosperez-dev/playita_cli"
  version "0.1.64"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/carlosperez-dev/playita_cli/releases/download/v0.1.64/playita_cli_0.1.64_darwin_amd64.tar.gz"
      sha256 "e13cde9af47cbaa65c78d6792f4acd3c6a47d88f5994c17c4ec376ecd493152b"

      def install
        bin.install "playita"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/carlosperez-dev/playita_cli/releases/download/v0.1.64/playita_cli_0.1.64_darwin_arm64.tar.gz"
      sha256 "1680a7114d851b2e97e56e8cb1b12d8b2f5d8fa7f2bda893d85416d097372648"

      def install
        bin.install "playita"
      end
    end
  end

  on_linux do
    # if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    #   url "https://github.com/carlosperez-dev/playita_cli/releases/download/v0.1.53/playita_cli_0.1.53_linux_arm64.tar.gz"
    #   sha256 "ee7e558b15ebbe1b8398eacf74d62c09c3f024937c534291083fd70eef48ccaa"

    #   def install
    #     bin.install "playita"
    #   end
    # end
    if Hardware::CPU.intel?
      url "https://github.com/carlosperez-dev/playita_cli/releases/download/v0.1.64/playita_cli_0.1.64_linux_amd64.tar.gz"
      sha256 "c84490a5cdd531290c710e5dd3fc0e64644dd2e65dabf03334ab84174fba9d46"

      def install
        bin.install "playita"
      end
    end
  end
end
