# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macdaily" do
  version "0.1.8"
  sha256 "015d96342d1ed8edcb6f7dc518214a954c896158b5daf9af9b0b96359bf02dbc"

  url "https://github.com/andresousadotpt/macdaily/releases/download/v#{version}/macdaily-#{version}.zip"
  name "MacDaily"
  desc "Daily markdown notes for macOS"
  homepage "https://github.com/andresousadotpt/macdaily"

  depends_on macos: :sonoma

  app "macdaily.app"

  zap trash: [
    "~/Library/Application Support/MacDaily",
  ]
end
