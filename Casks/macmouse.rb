# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macmouse" do
  version "0.1.5"
  sha256 "4478370a4c4be1efbc707e8901d09c93ae04ab39c771443ad5434e6292a1e995"

  url "https://github.com/andresousadotpt/macmouse/releases/download/v#{version}/macmouse-#{version}.zip"
  name "MacMouse"
  desc "Smooth scrolling and button remapping for third-party mice"
  homepage "https://github.com/andresousadotpt/macmouse"

  auto_updates true
  depends_on macos: :sonoma

  app "macmouse.app"

  zap trash: "~/Library/Application Support/MacMouse"

  caveats <<~EOS
    MacMouse needs Accessibility access to change mouse input:
      System Settings > Privacy & Security > Accessibility

    MacMouse can update itself (Settings > General > Updates).
    If upgrading from 0.1.x, remove the old entry from that list once and
    enable it again; later versions keep the permission.
  EOS
end
