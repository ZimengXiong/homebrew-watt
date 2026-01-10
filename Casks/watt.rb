# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.3.3"
  sha256 "1271e2289e03f9ab06d1de7ff37e6411cafc1202d4da821ba5b56aa9c69f6504"

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
