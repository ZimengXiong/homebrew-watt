# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.5.4"
  sha256 "12e7cdd8f723dec802185e5d6c2b450598ca22eadafc2a8ff3eb225d467a278f"

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
