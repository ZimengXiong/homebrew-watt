# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.5.3"
  sha256 "5ed661c9ab4a5c03925776445e4e86362bbfeeba8f069de8145099d9aeac9f44"

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
