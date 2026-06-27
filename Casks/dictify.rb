cask "dictify" do
  version "1.10"
  sha256 "933746416f49d3fccd7aca7d7f76ca0e9afbf6c2e562863a502bb4ce8f15a65b"

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
