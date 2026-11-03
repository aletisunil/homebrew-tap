cask "mactoolkit" do
  version "2.7"
  sha256 "c102316b32649cf35bbc3323fa8c7fb939e6e32320a8ca3641e9f4e159caec9b"

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
