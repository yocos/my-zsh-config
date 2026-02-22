# =============================================================================
# 08-functions.zsh — Utility shell functions
# =============================================================================
# Collection of small helper functions for everyday tasks.
# Each function is self-contained and has no external dependencies beyond
# standard POSIX tools unless stated otherwise.
# =============================================================================

# Create a directory and immediately cd into it.
mkcd() { mkdir -p "$1" && cd "$1" }

# Extract any common archive format by file extension.
extract() {
  case "$1" in
    *.tar.bz2) tar xjf "$1"   ;;
    *.tar.gz)  tar xzf "$1"   ;;
    *.tar.xz)  tar xJf "$1"   ;;
    *.zip)     unzip "$1"      ;;
    *.gz)      gunzip "$1"     ;;
    *.7z)      7z x "$1"       ;;
    *)         echo "Unknown format: $1" ;;
  esac
}

# Search the shell history for a pattern.
# Usage: hist <pattern>
hist() { history | grep "$1" }

# List processes listening on a given port (or all ports if none specified).
# Usage: listening [port]
listening() { ss -tulpn | grep ":${1:-}" }

# Stream logs from all containers of Kubernetes pods matching a label selector.
# Requires kubectl. Usage: klogs <label-selector>
# Example: klogs app=my-service
klogs() { kubectl logs -l "$1" --all-containers=true -f }

# Switch the active AWS profile for the current session.
# Usage: awsp <profile-name>
awsp() {
  export AWS_PROFILE="$1"
  echo "AWS profile → $AWS_PROFILE"
}

# Clone a git repository and cd into the resulting directory.
# Usage: gclone <repo-url>
gclone() { git clone "$1" && cd "$(basename "$1" .git)" }
