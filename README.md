# homebrew-tap

Homebrew tap for apps by Sunil Aleti:
[Dictify](https://github.com/aletisunil/Dictify) and
[macToolKit](https://github.com/aletisunil/macToolKit).

## Install

```sh
brew tap aletisunil/tap
brew install --cask dictify
brew install --cask mactoolkit
```

After tapping once, you can also just run:

```sh
brew install dictify
brew install mactoolkit
```

### Upgrade

```sh
brew upgrade --cask dictify
brew upgrade --cask mactoolkit
```

### Uninstall

```sh
brew uninstall --cask mactoolkit        # remove the app
brew uninstall --zap --cask mactoolkit  # also remove its settings/history
```
