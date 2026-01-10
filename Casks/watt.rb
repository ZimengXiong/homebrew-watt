# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.0.12"
  sha256 "9dee33ce37a7fd6f27fcb350f8ea44583ad31899da0042930384f92c53b1af4b"

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
