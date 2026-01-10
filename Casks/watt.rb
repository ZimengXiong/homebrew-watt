# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.2.3"
  sha256 "00eef36c7e3ae388c0b8c6901c7be1840dfc10acbddcf2dee031607f5ce393f3"

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
