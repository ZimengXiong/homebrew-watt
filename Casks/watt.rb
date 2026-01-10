# typed: false
# frozen_string_literal: true

cask "watt" do
  version "1.3.6"
  sha256 "e54c9db4882ee9abfc357102fe2914471589ba33c1585838fd1b199119f1986d"

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
