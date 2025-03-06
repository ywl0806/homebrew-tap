require "language/go"

class Mpm < Formula
    desc "mpm - a simple CLI to managment local projects"
    homepage "https://github.com/ywl0806/mpm"
    url "https://github.com/ywl0806/mpm/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "your-tarball-sha256"

    depends_on "go" => :build

    if Hardware::CPU.arm?
        url "https://github.com/ywl0806/mpm/releases/download/v1.0.0/mpm-darwin-arm64.tar.gz"
        sha256 "26c884ab5eb0fcb0d4394ac387d98974b2066fe40b524f9eb62eea6d864a6901"
      else
        url "https://github.com/ywl0806/mpm/releases/download/v1.0.0/mpm-darwin-amd64.tar.gz"
        sha256 "b051d88c853ec12cb367be150efae3634cdc234f4316b9fab5090a318c8b53b6"
      end

      def install
        bin.install "mpm"
      end

      test do
        system "#{bin}/mpm", "--version"
      end
  end
