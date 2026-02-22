# =============================================================================
# 01-env.zsh — Environment variables
# =============================================================================
# Defines global environment variables used across the shell session.
# Loaded early so all subsequent modules can rely on these values.
# =============================================================================

# Default editor and pager
export EDITOR='code'
export VISUAL='code'
export PAGER='bat'

# Locale — enforce UTF-8 everywhere
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

# User binary paths (prepended so they take priority over system binaries)
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

# ZSH config directories
export ZSH_DIR="$HOME/.zsh-new"
export ZSH_CACHE_DIR="$ZSH_DIR/cache"
[[ ! -d "$ZSH_CACHE_DIR" ]] && mkdir -p "$ZSH_CACHE_DIR"   # create cache dir if missing

# Homebrew util-linux binaries (macOS only)
export PATH="/opt/homebrew/opt/util-linux/bin:$PATH"
export PATH="/opt/homebrew/opt/util-linux/sbin:$PATH"

# Coloured output for ls
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad   # macOS colour scheme
export LS_COLORS='di=1;34:ln=1;36:ex=1;32'  # Linux / zsh completion colours
