cask "entervoid" do
  version "1.0.8"
  sha256 "c9d198d8026b049ac43268d5ba4ffdab02369f99bdcff826854211f715d191b4"

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
