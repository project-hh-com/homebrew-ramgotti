cask "ramgotti" do
  version "0.1.7"

  on_arm do
    sha256 "b09fd8fb6879c23dbf5be16ac1dd7027a51ea4948b316af833a96c6e49983d6a"
    url "https://github.com/project-hh-com/ramgotti/releases/download/v#{version}/RAMgotti-arm64.dmg"
  end
  on_intel do
    sha256 "5d8a1368dc742f6bf218b5cad60130262883a69cf8bf14bcb00a26bb20d4b028"
    url "https://github.com/project-hh-com/ramgotti/releases/download/v#{version}/RAMgotti-x64.dmg"
  end

  name "램고치"
  name "RAMgotti"
  desc "Ultra-lightweight macOS desktop pet that cleans memory leaks"
  homepage "https://github.com/project-hh-com/ramgotti"

  depends_on macos: ">= :monterey"

  app "RAMgotti.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/RAMgotti.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.projecthh.ramgotti",
    "~/Library/Preferences/com.projecthh.ramgotti.plist",
    "~/Library/Saved Application State/com.projecthh.ramgotti.savedState",
  ]
end
