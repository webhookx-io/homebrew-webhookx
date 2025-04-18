# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Webhookx < Formula
  desc "an open-source webhooks gateway for message receiving, processing, and delivering."
  homepage "https://github.com/webhookx-io/webhookx"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/webhookx-io/webhookx/releases/download/v0.6.0/webhookx_0.6.0_darwin_amd64.tar.gz"
      sha256 "c57a13ecc01317808204efe45171afcb07af82e41c3d1fa5b566bf18fd94844d"

      def install
        bin.install "webhookx"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/webhookx-io/webhookx/releases/download/v0.6.0/webhookx_0.6.0_darwin_arm64.tar.gz"
      sha256 "fbb3c66409a27e8debee54b0aed102386595e510e3938441faad737dda1b7f40"

      def install
        bin.install "webhookx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/webhookx-io/webhookx/releases/download/v0.6.0/webhookx_0.6.0_linux_amd64.tar.gz"
        sha256 "e796743ce0be3d7255a84b8d343bf25715883d63418e519bacc0d0abcfc9c22f"

        def install
          bin.install "webhookx"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/webhookx-io/webhookx/releases/download/v0.6.0/webhookx_0.6.0_linux_arm64.tar.gz"
        sha256 "bec34e25eb661432d917b05e2bd36709bf8597c945b22600c2815b1c3240c924"

        def install
          bin.install "webhookx"
        end
      end
    end
  end

  test do
    system "#{bin}/webhookx", "version"
  end
end
