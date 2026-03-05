require_relative "lib/custom_download_strategy"
class Ende < Formula
  desc "Secure CLI for DevOps teams to share secrets using public-key encryption and sender verification."
  homepage "https://github.com/DevopsArtFactory/ende"
  url "https://github.com/DevopsArtFactory/ende/releases/download/v0.0.2/ende-darwin-arm64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy # 더미 URL (Homebrew 요구사항 충족용)
  version "v0.0.2"
  sha256 "0f5aeaf8b1fca45598e6a57d6583e7fa8f6537520ab44228fbb82b734eaf7ee4" # brew fetch로 확인 가능

  def install
    bin.install "ende-darwin-arm64" => "ende"
  end

  test do
    system "#{bin}/ende", "--version"
  end
end
