# Homebrew cask template for macdaily.
# CI updates version + sha256 "67ca6f7e803961acb63c3eb21923360cdbb6d129d4fe2e4cfb8903dfcf1ba9f5"
cask "macdaily" do
  version "0.1.1"
  sha256 "67ca6f7e803961acb63c3eb21923360cdbb6d129d4fe2e4cfb8903dfcf1ba9f5"

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
