# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.0.9"
  sha256 "e3666e77710b5c253bd768eb8049c404436fd0462e6e8d72cecd43ec464c377c"

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
