# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.0.1"
  sha256 "04f14385ab551718d51f69a07c29892e7ba16ee96dc4ee9a037b02993eccc5ae"

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
