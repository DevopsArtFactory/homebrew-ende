require_relative "lib/custom_download_strategy"
class Ende < Formula
  desc "Secure CLI for DevOps teams to share secrets using public-key encryption and sender verification."
  homepage "https://github.com/DevopsArtFactory/ende"
  url "https://github.com/DevopsArtFactory/ende/releases/download/v0.0.3/ende-darwin-arm64"
  version "v0.0.3"
  sha256 "415b5348b4116ec5772111aacae9ae38bd0a8b2b2116098baab62c1cd344318e"

  def install
    bin.install "ende-darwin-arm64" => "ende"
  end

  test do
    system "#{bin}/ende", "--version"
  end
end
