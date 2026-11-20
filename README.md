# e-dream-ai Homebrew tap

Homebrew cask for [infinidream](https://infinidream.ai/), the macOS app and screensaver.

```sh
brew install --cask e-dream-ai/tap/infinidream
```

The app updates itself (Sparkle), so `brew upgrade` leaves it alone unless you pass `--greedy`.
On first launch the app installs its screensaver into `~/Library/Screen Savers`.

`brew uninstall --zap infinidream` also deletes downloaded dreams and settings
(`/Users/Shared/infinidream.ai`) and the installed screensaver.

## Maintenance

`Casks/infinidream.rb` is updated by `client_generic/MacBuild/release.py` in
[e-dream-ai/client](https://github.com/e-dream-ai/client) when a release is published.
To update it by hand, set `version` and `sha256` (the `.dmg` asset digest from the GitHub release).
