cask "claudemeter" do
  version "0.2.2"
  sha256 "6cb494c3b5fbda603f00fcfd030787d3123daea28da6b631c9362429f7f8cdb9"

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
