# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.5.0"
  sha256 "c8cf89e44cd92b1e219a90146d2deca4c1f66dd3aea6186effb35fa1c0c94e2a"

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
