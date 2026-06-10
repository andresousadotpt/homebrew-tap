# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macdaily" do
  version "0.1.3"
  sha256 "b8b1d27374b9e9b86b178dac27594f04ad74863e32fe1e5a2fcc9db94d17ab4a"

  url "https://github.com/andresousadotpt/macdaily/releases/download/v#{version}/macdaily-#{version}.zip"
  name "MacDaily"
  desc "Daily markdown notes for macOS"
  homepage "https://github.com/andresousadotpt/macdaily"

  depends_on macos: ">= :sonoma"

  app "macdaily.app"

  zap trash: [
    "~/Library/Application Support/MacDaily",
  ]
end
