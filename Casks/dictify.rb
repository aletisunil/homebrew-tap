cask "dictify" do
  version "1.24"
  sha256 "9c989f7aaf1c3b5b1fbc9769687f7b7d11523a8714711b060b671c5d315faf41"

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
