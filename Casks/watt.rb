# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.2.0"
  sha256 "6d6362e2df7a05b5d482b1d261431a2ab94a2eb18cfc2c94d891f32b2960022e"

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
