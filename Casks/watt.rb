# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.3.1"
  sha256 "61ac382c2eaf964cb8625a0f7c6b63c7e93d4cee7f52dcdadde6143f81bd9242"

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
