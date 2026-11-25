cask "infinidream" do
  version "0.17.3"
  sha256 "fb1a2a13e6f9a482c50f846e4a625b04b45e7e1f5d81d429112649ea3ca73c42"

  url "https://github.com/e-dream-ai/client/releases/download/#{version}/infinidream-#{version}.dmg",
      verified: "github.com/e-dream-ai/client/"
  name "infinidream"
  desc "Visuals for your vibe, ambient AI visuals and screensaver"
  homepage "https://infinidream.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "infinidream.app"

  uninstall quit: "ai.infinidream.alpha.app"

  zap trash: [
    "/Users/Shared/infinidream.ai",
    "~/Library/Application Scripts/ai.infinidream.alpha.app.*",
    "~/Library/Application Support/bugsnag-shared-ai.infinidream.alpha.app",
    "~/Library/Caches/ai.infinidream.alpha.app",
    "~/Library/Caches/bugsnag-shared-ai.infinidream.alpha.app",
    "~/Library/Containers/ai.infinidream.alpha.app.*",
    "~/Library/HTTPStorages/ai.infinidream.alpha.app",
    "~/Library/HTTPStorages/ai.infinidream.alpha.app.binarycookies",
    "~/Library/Preferences/ai.infinidream.alpha.app.plist",
    "~/Library/Screen Savers/infinidream.saver",
  ]
end
