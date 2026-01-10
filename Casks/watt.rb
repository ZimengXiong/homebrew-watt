# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.2.1"
  sha256 "4ac371095df88d6c97e533f98db97495ee3aad4717079d1edf88682ca4e7e9df"

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
