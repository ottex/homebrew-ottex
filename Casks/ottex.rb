cask "ottex" do
  version "1.5.0"
  sha256 "e0fad2a085242e61083784dc55b647569d4273a5027c0018fd03e3a5f75242e4"

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
