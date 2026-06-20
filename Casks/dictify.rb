cask "dictify" do
  version "1.8"
  sha256 "2948bf9da0ebe0985207969f7514e6d0f22462771ebf612f973808057f73d6b9"

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
