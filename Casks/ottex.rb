cask "ottex" do
  version "1.4.0"
  sha256 "f9a7c5e7ba736962368612236afcbdd8e1162475390bbb8c84afe41c8f000089"

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
