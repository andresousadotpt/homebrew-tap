# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macban" do
  version "0.1.1"
  sha256 "6a60f996af677cc72e5dc7f7d502a56bb105130fc12f4336e30268c348e06b7f"

  url "https://github.com/andresousadotpt/macban/releases/download/v#{version}/macban-#{version}.zip"
  name "macban"
  desc "Local-first kanban for macOS"
  homepage "https://github.com/andresousadotpt/macban"

  depends_on macos: :sonoma

  app "macban.app"

  zap trash: [
    "~/Library/Application Support/Macban",
  ]
end
