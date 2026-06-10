# Homebrew cask template for macdaily.
# CI updates version + sha256 "bd2a0325405775a0eb198f1f8eef64403a66a58a3355bb479b956ff400c53c91"
cask "macdaily" do
  version "0.1.0"
  sha256 "bd2a0325405775a0eb198f1f8eef64403a66a58a3355bb479b956ff400c53c91"

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
