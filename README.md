# Homebrew Tap for zyekhabdul Utilities

Official Homebrew formulas for sovereign terminal utilities, SSH connection ergonomics, and AI token/quota monitoring.

## Available Formulas

| Formula | Description | Direct Install Command |
| :--- | :--- | :--- |
| `sshm` | Fast interactive SSH fuzzy manager with live metadata preview & port-forwarding | `brew install zyekhabdul/tap/sshm` |
| `agy-quota` | Multi-account token, quota & tier monitor TUI for Google Antigravity | `brew install zyekhabdul/tap/agy-quota` |
| `markora` | Markor-style markdown notebook, quicknotes & todo TUI | `brew install zyekhabdul/tap/markora` |
| `vol3-suite` | Unified memory forensics, eBPF rootkit detection & incident triage suite | `brew install zyekhabdul/tap/vol3-suite` |
| `agy-guard` | Deterministic AI agent governance, AST blast-radius scanner & verification harness | `brew install zyekhabdul/tap/agy-guard` |

## Usage

### 1. Direct Installation (One-liner)

You can install any formula directly without tapping first:

```bash
brew install zyekhabdul/tap/sshm
brew install zyekhabdul/tap/agy-quota
brew install zyekhabdul/tap/markora
brew install zyekhabdul/tap/vol3-suite
brew install zyekhabdul/tap/agy-guard
```

### 2. Tapping the Repository

Alternatively, add the tap to your Homebrew installation:

```bash
brew tap zyekhabdul/tap
```

Then install formulas by their short names:

```bash
brew install sshm agy-quota markora vol3-suite agy-guard
```

## Updating

Update all formulas from this tap:

```bash
brew update
brew upgrade sshm agy-quota markora vol3-suite agy-guard
```
