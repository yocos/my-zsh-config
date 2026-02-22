# Navigation historique par début de commande
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey '^[[A'  up-line-or-beginning-search
bindkey '^[[B'  down-line-or-beginning-search
bindkey '^R'    history-incremental-search-backward
bindkey '^E'    autosuggest-accept
bindkey '^[[H'  beginning-of-line   # Home
bindkey '^[[F'  end-of-line         # End
bindkey '^[[3~' delete-char         # Delete
bindkey '^H'    backward-kill-word  # Ctrl+Backspace