# homebrew-tap

This repository is the Homebrew tap for packages published by `dmego`.

## What this repository contains

Each package is published as a Formula under:

```text
Formula/
```

Current formulas:

```text
Formula/codex-mem9.rb
```

## Install from this tap

```bash
brew tap dmego/tap
brew install codex-mem9
```

## Upgrade an installed package

```bash
brew update
brew upgrade codex-mem9
```

## Service management

```bash
brew services start codex-mem9
brew services stop codex-mem9
brew services restart codex-mem9
brew services list
```

## Add another formula

To publish another package in the same tap, add another file under `Formula/`.

Example:

```text
Formula/codex-mem9.rb
Formula/another-tool.rb
Formula/some-service.rb
```

Each formula is versioned independently. The tap repository itself does not need to share the same tag version as the source repositories.

## Version synchronization

The source repository and the tap repository are synchronized through the formula fields, not through matching git tags.

For each package release, update these fields in the formula:

- `url`
- `sha256`
- `version`

For `codex-mem9`, the release source of truth is the source repository tag such as `v0.1.0` in:

```text
https://github.com/dmego/codex-mem9
```

The tap repository only points Homebrew to the correct release artifact.
