# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.0.1"
  sha256 "737c6c2e060c662dbc1f0975c6b4f2dd72c287035accde7d0aa2d0e2f8be1a00"

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
