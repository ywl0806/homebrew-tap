require "language/go"

class Mpm < Formula
    desc "mpm - a simple CLI to managment local projects"
    homepage "https://github.com/ywl0806/mpm"
    url "https://github.com/ywl0806/mpm/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "your-tarball-sha256"

    depends_on "go" => :build

    if Hardware::CPU.arm?
        url "https://github.com/ywl0806/mpm/releases/download/v1.0.0/mpm-darwin-arm64.tar.gz"
        sha256 "19f80b1d4eb0fd9f4dcdccebab30edafe0375f2624e576c7cb698d044f12c885"
      else
        url "https://github.com/ywl0806/mpm/releases/download/v1.0.0/mpm-darwin-amd64.tar.gz"
        sha256 "1c4f3f8628e8151afd29e2d82ce4cdbe1edcec0e6617b3f52a7f28b16c37c8a5"
      end

      def install
        bin.install "mpm"
      end

      test do
        system "#{bin}/mpm", "--version"
      end
  end
