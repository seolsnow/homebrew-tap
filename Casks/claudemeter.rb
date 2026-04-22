cask "claudemeter" do
  version "0.2.0"
  sha256 "0b9fc312c51dd19f36e7047da8a9790eed97837901f036e3031ead2d6568ca62"

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
