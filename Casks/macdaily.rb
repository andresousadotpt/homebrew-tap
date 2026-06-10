# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macdaily" do
  version "0.1.2"
  sha256 "d18ebce36480217458eea5961f8952e6c3bbe0bc1893156737dc55cc72f47bc0"

  url "https://github.com/andresousadotpt/macdaily/releases/download/v#{version}/macdaily-#{version}.zip"
  name "macdaily"
  desc "Daily markdown notes for macOS"
  homepage "https://github.com/andresousadotpt/macdaily"

  depends_on macos: ">= :sonoma"

  app "macdaily.app"

  zap trash: [
    "~/Library/Application Support/MacDaily",
  ]
end
