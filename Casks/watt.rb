# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.0.6"
  sha256 "4ed3c4e8a1d92f307e98655370048f804f0d5c700503fbdc03f3418191017344"

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
