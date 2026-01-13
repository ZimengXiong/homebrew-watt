# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.5.2"
  sha256 "6afa2610760da697335d84ea55006e9c1df50baa3cb5878eb469b79d84dd5d72"

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
