cask "claudemeter" do
  version "0.2.3"
  sha256 "fa13e015a342348820cff9c8f7c0b4f0c5cc3813c923ad0737e64d57e7a46527"

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
