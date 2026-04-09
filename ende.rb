class Ende < Formula
  desc "Secure CLI for DevOps teams to share secrets using public-key encryption and sender verification."
  homepage "https://github.com/DevopsArtFactory/ende"
  url "https://github.com/DevopsArtFactory/ende/releases/download/v0.0.5/ende-darwin-arm64"
  version "v0.0.5"
  sha256 "c9600a6d665c182194af23eaa85c242aadf8a83a0ecf6263e4c0b84a04d64ca9"

  def install
    bin.install "ende-darwin-arm64" => "ende"
  end

  test do
    system "#{bin}/ende", "--version"
  end
end
