cask "claudemeter" do
  version "0.2.4"
  sha256 "3ce5f526c102e4b1965c4c0f32ed5acd9b27d8e0a93022816a32cb14bed70c0c"

  url "https://github.com/seolsnow/ClaudeMeter/releases/download/v#{version}/ClaudeMeter.zip"
  name "ClaudeMeter"
  desc "macOS menu bar app that shows your Claude usage at a glance"
  homepage "https://github.com/seolsnow/ClaudeMeter"

  depends_on macos: ">= :sonoma"

  app "ClaudeMeter.app"

  zap trash: [
    "~/Library/Preferences/com.devsisters.claudemeter.plist",
    "~/Library/Application Support/com.devsisters.claudemeter",
    "~/Library/Caches/com.devsisters.claudemeter",
  ]
end
