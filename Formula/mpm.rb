require "language/go"

class Mpm < Formula
    desc "mpm - a simple CLI to managment local projects"
    homepage "https://github.com/ywl0806/mpm"
    url "https://github.com/ywl0806/mpm/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "your-tarball-sha256"

    depends_on "go" => :build

    if Hardware::CPU.arm?
        url "https://github.com/ywl0806/mpm/releases/download/v1.0.0/mpm-darwin-arm64.tar.gz"
        sha256 "8b3a5de824790ef5cf8f56f12b5fcb052fa4c9e112ede3da0ad8d70da0e464cc"
      else
        url "https://github.com/ywl0806/mpm/releases/download/v1.0.0/mpm-darwin-amd64.tar.gz"
        sha256 "15f95a951bf95c9d76044cdcde50c027c30cc9fccab82643a9c99dd2a18c9302"
      end

      def install
        bin.install "mpm"
        chmod 0755, "#{bin}/mpm"
      end

      test do
        system "#{bin}/mpm", "--version"
      end
  end
