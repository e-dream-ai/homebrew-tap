cask "infinidream" do
  version "0.17.2"
  sha256 "5d56b576cf02b81c83ab8494f73a75b0067f657e3d7673a55b61867e873a42f9"

  url "https://github.com/e-dream-ai/client/releases/download/#{version}/infinidream-#{version}.dmg",
      verified: "github.com/e-dream-ai/client/"
  name "infinidream"
  desc "Generative AI dream player and screensaver"
  homepage "https://infinidream.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
