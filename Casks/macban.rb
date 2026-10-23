# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macban" do
  version "0.1.2"
  sha256 "7ae4d0593405a14b73f91a61b4f4971661cf25152d8915b137fc6a43eec0dd2d"

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
