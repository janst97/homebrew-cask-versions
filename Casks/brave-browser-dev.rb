cask "brave-browser-dev" do
  version "87.1.17.65,117.65"
  sha256 "7ddf91be63277a7685d0e523902aa5e71d3d8e0b14d6e6f3ab43fb7beecd64a9"

  # updates-cdn.bravesoftware.com/sparkle/Brave-Browser/ was verified as official when first introduced to the cask
  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/dev/#{version.after_comma}/Brave-Browser-Dev.dmg"
  appcast "https://updates.bravesoftware.com/sparkle/Brave-Browser/dev/appcast.xml"
  name "Brave Dev"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-dev/"

  auto_updates true

  app "Brave Browser Dev.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
