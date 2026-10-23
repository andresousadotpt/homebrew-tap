# Homebrew cask template — CI generates the final cask from packaging/app.env on each release.
cask "macmouse" do
  version "0.1.4"
  sha256 "c48127fe47189d7ece3fc58b96788107059e3e7d7e7e390261db14de2cafe2d2"

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
