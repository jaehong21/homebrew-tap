# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hibiscus < Formula
  desc "Modern terminal UI to interact with AWS resources"
  homepage "https://jaehong21.com"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jaehong21/hibiscus/releases/download/v0.2.1/hibiscus_Darwin_amd64.tar.gz"
      sha256 "a3966f58c9a4c763adda20f47926e9a8bc83f94dc7d7fa4b2156b81825d787b9"

      def install
        bin.install "hibiscus"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jaehong21/hibiscus/releases/download/v0.2.1/hibiscus_Darwin_arm64.tar.gz"
      sha256 "3ca8c0943529c05f3f493edb3e5cfda7f1e30e60268b51e41c4aee74f69d18e3"

      def install
        bin.install "hibiscus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jaehong21/hibiscus/releases/download/v0.2.1/hibiscus_Linux_amd64.tar.gz"
        sha256 "530075b3694180e6c30dc05d73972e476555819ee7d4f33a06c17de9e964ac97"

        def install
          bin.install "hibiscus"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jaehong21/hibiscus/releases/download/v0.2.1/hibiscus_Linux_arm64.tar.gz"
        sha256 "4c5ae114af2c783a313ac6c328ebc439453bec40ac5f4b058ac2f50119929698"

        def install
          bin.install "hibiscus"
        end
      end
    end
  end

  test do
    system "hibiscus version"
  end
end
