cask "ramgotti" do
  version "0.1.8"

  on_arm do
    sha256 "8cbc72deb30b6c00f09856de0e479bf84fed96f5d2ccf7d4cfd36c15d8015d18"
    url "https://github.com/project-hh-com/ramgotti/releases/download/v#{version}/RAMgotti-arm64.dmg"
  end
  on_intel do
    sha256 "e1b213fcc3cb50f2230ea87d8ab2a2299850ec7e1cedbdd6cf35fe71484502e4"
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
