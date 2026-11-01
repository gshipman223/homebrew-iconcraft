cask "iconcraft" do
  version "0.14.1"
  sha256 "3a1d24c89ab85ccd5606b7e920aaadf7aa2a9a0d746f2bc2db05f118139d71df"

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
