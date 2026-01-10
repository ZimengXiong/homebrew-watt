# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.3.2"
  sha256 "6ed098f2fcee3aecd1c422a39b0b0b5b893af1f3ed100ac074255afc74f4af74"

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
