# =============================================================================
# 04-keybinding.zsh — Key bindings
# =============================================================================
# Registers custom ZLE (Zsh Line Editor) widgets and maps keys.
# Arrow keys are bound to history search filtered by the current buffer
# prefix, making it easy to cycle through commands that start the same way.
# =============================================================================

# Register widgets for prefix-aware history navigation
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# --- Key bindings ---
bindkey '^[[A'  up-line-or-beginning-search    # Up arrow    — previous matching history entry
bindkey '^[[B'  down-line-or-beginning-search  # Down arrow  — next matching history entry
bindkey '^R'    history-incremental-search-backward  # Ctrl+R — interactive history search
bindkey '^E'    autosuggest-accept             # Ctrl+E      — accept autosuggestion
bindkey '^[[H'  beginning-of-line             # Home        — jump to line start
bindkey '^[[F'  end-of-line                   # End         — jump to line end
bindkey '^[[3~' delete-char                   # Delete      — delete character under cursor
bindkey '^H'    backward-kill-word            # Ctrl+Backspace — delete previous word
