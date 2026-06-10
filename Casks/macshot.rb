# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macshot" do
  version "0.1.3"
  sha256 "7822242715032dab5ea47d203e3e61b041e3ab27a6b811db73e9d6aa7ebdf618"

  url "https://github.com/andresousadotpt/macshot/releases/download/v#{version}/macshot-#{version}.zip"
  name "MacShot"
  desc "Native macOS app"
  homepage "https://github.com/andresousadotpt/macshot"

  depends_on macos: ">= :sonoma"

  app "macshot.app"

  zap trash: [
    "~/Library/Application Support/MacShot",
  ]
end
