# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.0.4"
  sha256 "d78e0c9b871784da09b26f8e4bd5bf2533910451f5991192063bd9adf2dbd73e"

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
