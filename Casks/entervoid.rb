cask "entervoid" do
  version "1.0.0"
  sha256 "7c79dc6d7e47043fbae1cb06303b653fb64b5643533b5a4204e587a0b587e8a4"

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
