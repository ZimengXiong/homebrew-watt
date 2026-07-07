# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.5.4"
  sha256 "779085de7f913ddb5b8a68d3ba0a2e495734527833f80563b70ec585e12da0fc"

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
