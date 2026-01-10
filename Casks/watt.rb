# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.3.7"
  sha256 "33be802efe8f9dbe315a55ca04085ca99561f2fd19b68aaca1c1478036799af8"

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
