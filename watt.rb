# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.0.5"
  sha256 "dbe6fb72239b3c1826f89a1d07c04d67a92d47ebde2f0182b9ff8654df67ad9a"

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
