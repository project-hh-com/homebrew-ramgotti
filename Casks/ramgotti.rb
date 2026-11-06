cask "ramgotti" do
  version "0.1.10"

  on_arm do
    sha256 "4fa184eac8d127068e8a9a3e72dce510b88d8769dafe527e7b23207a0fec686d"
    url "https://github.com/project-hh-com/ramgotti/releases/download/v#{version}/RAMgotti-arm64.dmg"
  end
  on_intel do
    sha256 "feaddeaf6204af3168a3922c1e74412d3c0e6de135f4803a02ef33f615279a54"
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
