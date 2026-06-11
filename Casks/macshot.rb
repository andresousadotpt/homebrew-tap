# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macshot" do
  version "0.1.7"
  sha256 "6b921095a665e9da3b367136827048f1ba78d2ee547b9da6d42de0b8b3494cd6"

  url "https://github.com/andresousadotpt/macshot/releases/download/v#{version}/macshot-#{version}.zip"
  name "Macshot"
  desc "Native macOS app"
  homepage "https://github.com/andresousadotpt/macshot"

  depends_on macos: :sonoma

  app "macshot.app"

  zap trash: [
    "~/Library/Application Support/Macshot",
  ]
end
