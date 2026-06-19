cask "ottex" do
  version "1.4.1"
  sha256 "7370d3ac32f80395c8b33d06ed938aa91b9a22e12af2d50622fe21393b5ab567"

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
