# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macshot" do
  version "0.1.1"
  sha256 "95f144579e3319da9ab458deefb53b65a5a054c8a5b74c107f9537564b8c0240"

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
