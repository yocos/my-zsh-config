# =============================================================================
# 03-completions.zsh — Completion system
# =============================================================================
# Initialises the ZSH completion engine (compinit) with caching to avoid
# re-scanning fpath on every shell start. The dump file is regenerated only
# when it is older than 24 hours, keeping startup fast.
# Additional completion definitions from zsh-completions are prepended to fpath.
# =============================================================================

# Add zsh-completions definitions before initialising compinit
fpath=(~/$ZSH_DIR/plugins/zsh-completions/src $fpath)

autoload -Uz compinit

# Only regenerate the completion dump file if it is older than 24 hours;
# otherwise load from cache (-C skips the security check for speed).
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit -d "$ZSH_CACHE_DIR/.zcompdump"
else
  compinit -C -d "$ZSH_CACHE_DIR/.zcompdump"
fi

# --- Completion style ---
zstyle ':completion:*' menu select                                    # interactive menu selection
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|=*' 'l:|=* r:|=*'  # case-insensitive + partial matching
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"              # colour-coded completion list
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'    # section headers in yellow
zstyle ':completion:*' use-cache yes                                  # enable completion caching
zstyle ':completion:*' cache-path "$ZSH_CACHE_DIR"                   # cache location
