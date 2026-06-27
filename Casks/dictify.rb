cask "dictify" do
  version "1.11"
  sha256 "513121c32487a6c96da68f78e9b2dc3122d1b972ad24191f47033ae6a1d54201"

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
