# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macdaily" do
  version "0.1.6"
  sha256 "08184b857b105eb38c950d20132d48c0483a96ef3c665cd5e76c67719fc3cfc4"

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
