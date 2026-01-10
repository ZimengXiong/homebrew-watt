# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.3.4"
  sha256 "8ad8380cb10a480ae9efc3833757fca8ba797565b03c1c594a515a96bcb24c65"

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
