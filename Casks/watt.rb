# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.0.10"
  sha256 "4876bcba68522803c080ccf2564cbf93147ff9f4abe68390d935846e2663f52a"

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
