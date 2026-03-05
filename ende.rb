require_relative "lib/custom_download_strategy"
class Ende < Formula
  desc "Secure CLI for DevOps teams to share secrets using public-key encryption and sender verification."
  homepage "https://github.com/DevopsArtFactory/ende"
  url "https://github.com/DevopsArtFactory/ende/releases/download/v0.0.2/ende-darwin-arm64"
  version "v0.0.2"
  sha256 "1754678ab0437748d51a9fd2e18545f1dc486a66c35ad8484a4d07c245894126"

  def install
    bin.install "ende-darwin-arm64" => "ende"
  end

  test do
    system "#{bin}/ende", "--version"
  end
end
