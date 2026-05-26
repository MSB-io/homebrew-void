cask "entervoid" do
  version "1.0.6"
  sha256 "303f4a508d5b4a722cef521e4cd2c9a815c3bda0c126c9727e6c03500f46d39b"

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
