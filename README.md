# prakhar1989's Homebrew Tap

Official Homebrew tap for personal tools and macOS apps by [@prakhar1989](https://github.com/prakhar1989).

## Installation

You can install any cask or formula directly without tapping first:

```bash
brew install prakhar1989/tap/<package>
```

Or add the tap to your Homebrew installation:

```bash
brew tap prakhar1989/tap
```

---

## Casks

### [Jigglypuff](https://github.com/prakhar1989/jigglypuff)

Voice dictation for macOS, powered by Gemini.

```bash
# Direct install
brew install prakhar1989/tap/jigglypuff

# Or if you've already run `brew tap prakhar1989/tap`
brew install jigglypuff
```

> **Note:** Because Jigglypuff is not signed with a paid Apple Developer ID, macOS Gatekeeper may show a security notice on first launch. If prompted, run `xattr -cr /Applications/Jigglypuff.app` or right-click the app and choose **Open**.
