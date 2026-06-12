# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "vaulta" do
  version "0.1.0"
  sha256 "5df9f7b7643eba0babdefead18e8d97918862d4819746db591e2a47a82ebe220"

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
