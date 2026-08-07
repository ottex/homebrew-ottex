cask "ottex" do
  version "1.6.0"
  sha256 "85af4bd49b27a1cb9fd3d4c4a742164b8372c111cbf0a91d8f550da30fd527bb"

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
