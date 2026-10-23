# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macmouse" do
  version "0.1.2"
  sha256 "9b0fe093bee57c4ad3760bfa509d5cc27355016b23b9f55febb085b556447191"

  url "https://github.com/andresousadotpt/macmouse/releases/download/v#{version}/macmouse-#{version}.zip"
  name "MacMouse"
  desc "Smooth scrolling and button remapping for third-party mice"
  homepage "https://github.com/andresousadotpt/macmouse"

  depends_on macos: :sonoma

  app "macmouse.app"

  zap trash: "~/Library/Application Support/MacMouse"

  caveats <<~EOS
    MacMouse needs Accessibility access to change mouse input:
      System Settings > Privacy & Security > Accessibility

    Builds are ad-hoc signed, so after each upgrade remove the old
    MacMouse entry from that list and enable it again.
  EOS
end
