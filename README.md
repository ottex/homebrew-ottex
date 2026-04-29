# Ottex Homebrew Tap

Homebrew cask tap for Ottex.

```sh
brew tap ottex/ottex
brew install --cask ottex
```

## Updating Ottex

`brew update` refreshes Homebrew and tap metadata only. It does not replace the
installed app in `/Applications`.

To update Ottex through Homebrew:

```sh
brew update
brew upgrade --cask ottex
```

This tap intentionally does not mark the cask as `auto_updates true`. Ottex ships
with Sparkle update checks enabled by default, but Homebrew users usually expect
Homebrew to manage installed versions. Without `auto_updates true`, standard
`brew upgrade` behavior includes Ottex without requiring `--greedy`.

If you want Homebrew to be the only version manager for Ottex, open Ottex and turn
off automatic update checks in:

```text
Settings -> General -> Updates -> Automatic Update Checks
```

You can still use the in-app `Check for Updates...` action manually if you prefer
to install a specific Sparkle update outside Homebrew.
