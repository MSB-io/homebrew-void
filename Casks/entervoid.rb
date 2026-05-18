cask "entervoid" do
  version "1.0.0"
  sha256 "f14990a65c22271454cc097f3e604dd070cde1525f396a4bee59d1b2fd244bc1"

  url "https://github.com/MSB-io/Void/releases/download/v#{version}/Void-#{version}.zip"
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
