# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "vaulta" do
  version "0.1.1"
  sha256 "d8dde4f464160249aca2cbe99cdc20be388264c2cdbb86bb4813d4f8576d7a45"

  url "https://github.com/andresousadotpt/vaulta/releases/download/v#{version}/vaulta-#{version}.zip"
  name "Vaulta"
  desc "Native macOS app"
  homepage "https://github.com/andresousadotpt/vaulta"

  depends_on macos: :sonoma

  app "vaulta.app"

  zap trash: [
    "~/Library/Application Support/Vaulta",
  ]
end
