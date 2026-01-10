# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.1.0"
  sha256 "c02de4815486eb7817ae636f2140f3968f3210b396b0a2a818e254b4d6f6aabe"

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
