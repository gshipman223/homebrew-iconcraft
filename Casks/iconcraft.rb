cask "iconcraft" do
  version "0.14.0"
  sha256 "f95233eac2bf80e0a5c13a83dd185429c4918356a9ee8cc39922bea76801c9de"

  url "https://github.com/gshipman223/IconCraft/releases/download/v#{version}/IconCraft-Mac-#{version}.dmg"
  name "IconCraft"
  desc "Give any Mac app the name and icon you already know"
  homepage "https://iconcraft.co"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "IconCraft.app"

  zap trash: [
    "~/Library/Application Support/IconCraft",
    "~/Library/LaunchAgents/io.iconcraft.keepapplied.plist",
    "~/Library/LaunchAgents/io.iconcraft.login.plist",
  ]
end
