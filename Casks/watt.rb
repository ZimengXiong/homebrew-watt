# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.2.4"
  sha256 "ed59a899221b519bdf441ce5c58d60d6cc384783b7888cdb6164c8a2a90faa68"

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
