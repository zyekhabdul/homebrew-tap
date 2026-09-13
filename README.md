# Homebrew Tap for zyekhabdul Utilities

Official Homebrew formulas for sovereign terminal utilities, SSH connection ergonomics, and AI token/quota monitoring.

## Available Formulas

| Formula | Description | Direct Install Command |
| :--- | :--- | :--- |
| `sshm` | Fast interactive SSH fuzzy manager with live metadata preview & port-forwarding | `brew install zyekhabdul/tap/sshm` |
| `agy-quota` | Multi-account token, quota & tier monitor TUI for Google Antigravity | `brew install zyekhabdul/tap/agy-quota` |
| `markora` | Markor-style markdown notebook, quicknotes & todo TUI | `brew install zyekhabdul/tap/markora` |

## Usage

### 1. Direct Installation (One-liner)

You can install any formula directly without tapping first:

```bash
brew install zyekhabdul/tap/sshm
brew install zyekhabdul/tap/agy-quota
brew install zyekhabdul/tap/markora
```

### 2. Tapping the Repository

Alternatively, add the tap to your Homebrew installation:

```bash
brew tap zyekhabdul/tap
```

Then install formulas by their short names:

```bash
brew install sshm
brew install agy-quota
brew install markora
```

## Updating

Update all formulas from this tap:

```bash
brew update
brew upgrade sshm agy-quota markora
```
