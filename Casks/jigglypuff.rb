cask "jigglypuff" do
  version "0.0.3"
  sha256 "aaeeb6b705c73c7ddec58ea982a9885ca8a05eaace5eaebd0768b21a9ef29bb8"

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
