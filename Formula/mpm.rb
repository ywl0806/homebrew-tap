require "language/go"

class Mpm < Formula
    desc "mpm - a simple CLI to managment local projects"
    homepage "https://github.com/ywl0806/mpm"
    url "https://github.com/ywl0806/mpm/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "your-tarball-sha256"

    depends_on "go" => :build

    if Hardware::CPU.arm?
        url "https://github.com/ywl0806/mpm/releases/download/v1.0.0/mpm-darwin-arm64.tar.gz"
        sha256 "66d4a8f943d92fbad727c9884cb1c50af90cf07cb839adf106e0d5d4bebdfdb3"
      else
        url "https://github.com/ywl0806/mpm/releases/download/v1.0.0/mpm-darwin-amd64.tar.gz"
        sha256 "7a7050a7d54f884bd46ee4a1f6d639377ff63c7e6e862c82d19b76949234d381"
      end

      def install
        bin.install "mpm"
        chmod 0755, "#{bin}/mpm"
      end

      test do
        system "#{bin}/mpm", "--version"
      end
  end
