cask "daylite" do
  version "0.4.5"
  sha256 "a9f131114760f476335c64e6943cb55bdedee81b049dcc1c57b8f8b22c2bec3f"

  url "https://daylite.me/download/Daylite-#{version}-darwin-arm64.dmg"
  name "Daylite"
  desc "Task app for planning one day at a time"
  homepage "https://daylite.me/"

  livecheck do
    url "https://daylite.me/update/stable/darwin-arm64/0.0.0"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Daylite.app"

  zap trash: [
    "~/Library/Application Support/com.daylite.me",
    "~/Library/Caches/com.daylite.me.ShipIt",
    "~/Library/HTTPStorages/com.daylite.me",
    "~/Library/Preferences/com.daylite.me.plist",
    "~/Library/Saved Application State/com.daylite.me.savedState",
  ]
end
