# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.0.11"
  sha256 "8cd85a5f27d9e8c7167b9967613570d10c3276440d8e269b17f46b850387928a"

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
