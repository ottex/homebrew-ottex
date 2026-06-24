cask "ottex" do
  version "1.4.2"
  sha256 "ae5afc6315118dbf4b7c83e3b2b3cd6046e03d2738863090151da8d4b640ab9d"

  url "https://app-releases.ottex.ai/Ottex-#{version}.zip"
  name "Ottex"
  desc "Voice dictation and transcription app"
  homepage "https://ottex.ai/"

  livecheck do
    url "https://app-releases.ottex.ai/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :sequoia

  app "Ottex.app"

  uninstall quit: "com.ottex.nanoapp"

  zap trash: [
    "~/Library/Application Support/Ottex",
    "~/Library/Caches/com.ottex.nanoapp",
    "~/Library/HTTPStorages/com.ottex.nanoapp",
    "~/Library/Preferences/com.ottex.nanoapp.plist",
    "~/Library/Saved Application State/com.ottex.nanoapp.savedState",
  ]
end
