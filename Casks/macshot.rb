# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macshot" do
  version "0.1.8"
  sha256 "c127a82957ae782f69359606aced31a17e43c32c7cf27afe4ef597877e5316ed"

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
