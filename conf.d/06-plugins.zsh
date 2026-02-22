# =============================================================================
# 06-plugins.zsh — Plugin loading
# =============================================================================
# Sources third-party plugins and Oh-My-Zsh plugin files.
# Lazy-loaded modules (lazy.d/) are sourced here too so that their wrapper
# functions are available from the first interactive session.
# =============================================================================

# --- Core plugins ---
source $ZSH_DIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_DIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestions settings
ZSH_AUTOSUGGEST_STRATEGY=(history completion)  # try history first, then completion engine
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20             # don't suggest for very long commands
ZSH_AUTOSUGGEST_USE_ASYNC=1                    # compute suggestions asynchronously

# --- Lazy loaders (lazy.d/) ---
# Each file wraps a heavy tool so its initialisation runs only on first use.
for lazy_file in $ZSH_DIR/lazy.d/*.zsh; do
  source "$lazy_file"
done

# --- Oh-My-Zsh plugin files (copied via OMZ-sync-plugin.zsh) ---
source $ZSH_DIR/plugins/git.plugin.zsh     # git aliases and helpers
source $ZSH_DIR/plugins/docker.plugin.zsh  # docker aliases and helpers
source $ZSH_DIR/plugins/aws.plugin.zsh     # aws aliases and helpers
