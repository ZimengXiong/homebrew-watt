# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.0.8"
  sha256 "524461b7719926cb59fe40b3112811423198dc13655aa13234a60a8140a8f56b"

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
