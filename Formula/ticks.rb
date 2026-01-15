# typed: false
# frozen_string_literal: true

class Ticks < Formula
  desc "Multiplayer-first issue tracker for AI coding agents"
  homepage "https://github.com/mkelk/ticks-melk"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mkelk/homebrew-tap/releases/download/v#{version}/tk_#{version}_darwin_arm64.tar.gz"
      sha256 "a3ded0f435264e72693d316afa8b73594ab4708177fabd9acc53a77e1e93579e"

      def install
        bin.install "tk"
      end
    else
      url "https://github.com/mkelk/homebrew-tap/releases/download/v#{version}/tk_#{version}_darwin_amd64.tar.gz"
      sha256 "6baa8f325355b81a6e1736f2aad9bac36291daa123cc0c9b1586b23aeff96bb8"

      def install
        bin.install "tk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mkelk/homebrew-tap/releases/download/v#{version}/tk_#{version}_linux_arm64.tar.gz"
      sha256 "32da5e6b389ba7a6451a0f39d75bd71c68af421ed50ea5d4c994bcf68016f818"

      def install
        bin.install "tk"
      end
    else
      url "https://github.com/mkelk/homebrew-tap/releases/download/v#{version}/tk_#{version}_linux_amd64.tar.gz"
      sha256 "44f0514dfdc2e0d2938c5c861628668d69fc1f2db51716b19e0c464daba9218f"

      def install
        bin.install "tk"
      end
    end
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk version")
  end
end
