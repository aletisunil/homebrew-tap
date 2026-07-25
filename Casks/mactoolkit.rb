cask "mactoolkit" do
  version "2.0"
  sha256 "e52ab290d7b7c4b8ff51d6ca07e22b6ea684482603e23afb511e7e5b01bf2f19"

  url "https://github.com/aletisunil/macToolKit/releases/download/v#{version}/macToolKit.dmg"
  name "macToolKit"
  desc "Menu bar toolkit: Finder tools, colour temperature, AI rewrite, scroll reverser"
  homepage "https://github.com/aletisunil/macToolKit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "macToolKit.app"

  zap trash: [
    "~/Library/Application Support/macToolKit",
    "~/Library/Caches/com.sunilaleti.mactoolkit",
    "~/Library/HTTPStorages/com.sunilaleti.mactoolkit",
    "~/Library/Preferences/com.sunilaleti.mactoolkit.plist",
    "~/Library/Saved Application State/com.sunilaleti.mactoolkit.savedState",
  ]
end
