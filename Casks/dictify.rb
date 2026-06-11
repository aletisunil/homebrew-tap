cask "dictify" do
  version "1.5"
  sha256 "71c0d3f3595b19749e013900f433f19fd688c85d432a063eb85ced27009b1d8e"

  url "https://github.com/aletisunil/Dictify/releases/download/v#{version}/Dictify.dmg"
  name "Dictify"
  desc "Local-first push-to-talk dictation that transcribes speech into any app"
  homepage "https://github.com/aletisunil/Dictify"

  depends_on macos: :sonoma

  app "Dictify.app"

  zap trash: [
    "~/Library/Application Support/Dictify",
    "~/Library/Caches/com.dictify.app",
    "~/Library/HTTPStorages/com.dictify.app",
    "~/Library/Preferences/com.dictify.app.plist",
    "~/Library/Saved Application State/com.dictify.app.savedState",
  ]
end
