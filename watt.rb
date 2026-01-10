# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.0.3"
  sha256 "c34eecbea83836ead356b17e1f6741c3b67ad4105907ffbab8195a1e82cac7c6"

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
