# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.0.7"
  sha256 "aaa3c126a09f66bdfba9811872d15d0e8718959938dc6eb8bcad751ce839692c"

  url "https://github.com/zimengxiong/watt/releases/download/v#{version}/Watt.app.zip"
  name "Watt"
  desc "Real-time power consumption monitor for macOS"
  homepage "https://github.com/zimengxiong/watt"

  depends_on macos: ">= :ventura"

  app "Watt.app"

  zap trash: [
    "~/Library/Preferences/com.watt.app.plist",
    "~/Library/Application Support/Watt",
  ]
end
