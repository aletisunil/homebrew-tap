cask "mactoolkit" do
  version "1.8"
  sha256 "d7619ce9d57e724a41e4f28451999c4ec5b4c8343f69ccd3a766ee6d91c0d80b"

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
