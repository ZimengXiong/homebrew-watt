# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.4.0"
  sha256 "949706a1ffe7e590b62c5554e07484fe9675bd131ff652feefc8700fb448754a"

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
