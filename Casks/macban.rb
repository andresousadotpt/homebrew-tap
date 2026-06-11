# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macban" do
  version "0.1.0"
  sha256 "763bad98cb1114e6f8cb63afdc67180049d17c92ceb8c7cec5b14f45447d3f23"

  url "https://github.com/andresousadotpt/macban/releases/download/v#{version}/macban-#{version}.zip"
  name "macban"
  desc "Local-first kanban for macOS"
  homepage "https://github.com/andresousadotpt/macban"

  depends_on macos: ">= :sonoma"

  app "macban.app"

  zap trash: [
    "~/Library/Application Support/Macban",
  ]
end
