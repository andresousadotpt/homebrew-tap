# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macmouse" do
  version "0.1.6"
  sha256 "afd0cd37d89c7b241367d1292cb4cc77d2a1cc5d2b4773d59982b8e8f43be5d3"

  url "https://github.com/andresousadotpt/macmouse/releases/download/v#{version}/macmouse-#{version}.zip"
  name "MacMouse"
  desc "Smooth scrolling and button remapping for third-party mice"
  homepage "https://github.com/andresousadotpt/macmouse"

  auto_updates true
  depends_on macos: :sonoma

  app "macmouse.app"

  # Releases are signed but not notarized (no paid Apple Developer account), so
  # clear the download quarantine to skip the "Apple could not verify" prompt.
  # Runs on the unpacked app before it is moved into place.
  preflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "macmouse.app"],
        chdir:          ".",
        writable_paths: ["macmouse.app"]
  end

  zap trash: "~/Library/Application Support/MacMouse"

  caveats <<~EOS
    MacMouse needs Accessibility access to change mouse input:
      System Settings > Privacy & Security > Accessibility

    MacMouse can update itself (Settings > General > Updates).
    If upgrading from 0.1.x, remove the old entry from that list once and
    enable it again; later versions keep the permission.
  EOS
end
