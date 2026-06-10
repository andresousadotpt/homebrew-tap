# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macshot" do
  version "0.1.4"
  sha256 "99a5df9197859b43d9c33cad781d5470d994abdc138bf0e5bab24e56030ace41"

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
