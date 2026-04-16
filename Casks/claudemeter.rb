cask "claudemeter" do
  version "0.1.0"
  sha256 "99540dc0b5c397798b46c7ba12c155b7a8da692fbb35acc310df71ee23111a27"

  url "https://github.com/seolsnow/ClaudeMeter/releases/download/v#{version}/ClaudeMeter.zip"
  name "ClaudeMeter"
  desc "macOS menu bar app that shows your Claude.ai usage at a glance"
  homepage "https://github.com/seolsnow/ClaudeMeter"

  depends_on macos: ">= :sonoma"

  app "ClaudeMeter.app"

  zap trash: [
    "~/Library/Cookies/com.devsisters.claudemeter.binarycookies",
    "~/Library/Preferences/com.devsisters.claudemeter.plist",
  ]
end
