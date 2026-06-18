cask "mactoolkit" do
  version "1.4"
  sha256 "53166e8b9fc273209b4d9654faa46d5d7288630c7b077c8461dcd0725e72b8b3"

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
