# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macdaily" do
  version "0.1.5"
  sha256 "6d1020dd1d2d385d458073f0c69d8fece56031f7bba6d854dd80e2869b0d7716"

  url "https://github.com/andresousadotpt/macdaily/releases/download/v#{version}/macdaily-#{version}.zip"
  name "MacDaily"
  desc "Daily markdown notes for macOS"
  homepage "https://github.com/andresousadotpt/macdaily"

  depends_on macos: ">= :sonoma"

  app "macdaily.app"

  zap trash: [
    "~/Library/Application Support/MacDaily",
  ]
end
