require "language/go"

class Mpm < Formula
    desc "mpm - a simple CLI to managment local projects"
    homepage "https://github.com/ywl0806/mpm"
    url "https://github.com/ywl0806/mpm/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "your-tarball-sha256"

    depends_on "go" => :build

    if Hardware::CPU.arm?
        url "https://github.com/ywl0806/mpm/releases/download/v1.0.0/mpm-darwin-arm64.tar.gz"
        sha256 "fde648b1a89c84fcd4b1ad0f071490b873e5ebbca8bd0c311ac327cc1d3c0dc9"
      else
        url "https://github.com/ywl0806/mpm/releases/download/v1.0.0/mpm-darwin-amd64.tar.gz"
        sha256 "84c559f61a69456603139f0920f16b842bcc34d319f216f61a455374c46f4a45"
      end

      def install
        bin.install "mpm"
        chmod 0775, "#{bin}/mpm"
      end

      test do
        system "#{bin}/mpm", "--version"
      end
  end
