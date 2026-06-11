# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macshot" do
  version "0.1.6"
  sha256 "e65451298857d99b9d7f94e7d2e75e5c141117c35f1bd08aa06f9b97e25a8212"

  url "https://github.com/andresousadotpt/macshot/releases/download/v#{version}/macshot-#{version}.zip"
  name "Macshot"
  desc "Native macOS app"
  homepage "https://github.com/andresousadotpt/macshot"

  depends_on macos: ">= :sonoma"

  app "macshot.app"

  zap trash: [
    "~/Library/Application Support/Macshot",
  ]
end
