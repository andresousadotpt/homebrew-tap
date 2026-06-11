# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macshot" do
  version "0.1.5"
  sha256 "445cbd91dd5134ba3b189efbe1e1f2524049315b4e3dc94952041eb4355a46ac"

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
