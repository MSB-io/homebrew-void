cask "entervoid" do
  version "1.0.2"
  sha256 "7981ffd42f1622fbab046a85d06b280d04617f7cc232984fcf050992c556cb60"

  url "https://github.com/MSB-io/homebrew-void/releases/download/v#{version}/Void-#{version}.zip"
  name "Void"
  desc "Unlimited encrypted cloud storage for macOS"
  homepage "https://entervoid.me"

  depends_on formula: "td"

  app "Void.app"

  zap trash: [
    "~/Library/Application Support/Void",
    "~/Library/Caches/Void",
    "~/Library/Logs/Void",
    "~/Library/Preferences/app.void.mac.plist",
  ]
end
