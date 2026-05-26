cask "entervoid" do
  version "1.0.9"
  sha256 "a95ff12c9f7f0a4ee599771b1b28ff0848790b1e304578d1dfc51449874d655f"

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
