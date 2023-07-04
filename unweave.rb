# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Unweave < Formula
  desc "Supabase for Machine Learning"
  homepage "https://unweave.io"
  version "0.1.39"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/unweave/cli/releases/download/v0.1.39/unweave_0.1.39_darwin_arm64.tar.gz"
      sha256 "49ba846ede6709cb10bab1bfb8fa5012e8d5a627d41264b17dff2b1f7968e703"

      def install
        bin.install "unweave"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/unweave/cli/releases/download/v0.1.39/unweave_0.1.39_darwin_amd64.tar.gz"
      sha256 "976210ffb89685e1ebc60451d58eb15ca0e0b567b8189d40abaef65d487c9487"

      def install
        bin.install "unweave"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/unweave/cli/releases/download/v0.1.39/unweave_0.1.39_linux_amd64.tar.gz"
      sha256 "cdc5d4d088a42149d59965759521594614659ceb8385936a5096b12bdcdf30d8"

      def install
        bin.install "unweave"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unweave/cli/releases/download/v0.1.39/unweave_0.1.39_linux_arm64.tar.gz"
      sha256 "4db0b9ee3a7ee40322d68bbde47475c4cb38b41da32507025434d62f0333f4a9"

      def install
        bin.install "unweave"
      end
    end
  end

  test do
    system "#{bin}/unweave"
  end
end
