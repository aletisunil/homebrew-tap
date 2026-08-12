cask "mactoolkit" do
  version "2.3"
  sha256 "6dda8e4b279dc9d406efc35dcdacb378230056a80c655522320d3e1b8e81ebb9"

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
