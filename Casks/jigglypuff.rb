cask "jigglypuff" do
  version "0.0.4"
  sha256 "eb3cd6a6a354852ebd5e742df7cea50ebc0a09e732196df0ca2400be747db8cb"

  url "https://github.com/prakhar1989/jigglypuff/releases/download/#{version}/Jigglypuff.dmg"
  name "Jigglypuff"
  desc "Voice dictation powered by Gemini"
  homepage "https://github.com/prakhar1989/jigglypuff"

  depends_on macos: :sonoma

  app "Jigglypuff.app"

  zap trash: [
    "~/Library/Application Support/Jigglypuff",
    "~/Library/Preferences/com.jigglypuff.app.plist",
  ]

  caveats <<~EOS
    Jigglypuff is not notarized with an Apple Developer ID.
    If macOS prevents it from opening on first launch, run:
      xattr -cr /Applications/Jigglypuff.app
  EOS
end
