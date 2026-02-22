fpath=(~/$ZSH_DIR/plugins/zsh-completions/src $fpath)

autoload -Uz compinit

# Recompile seulement si le dump a plus de 24h
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit -d "$ZSH_CACHE_DIR/.zcompdump"
else
  compinit -C -d "$ZSH_CACHE_DIR/.zcompdump"
fi

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path "$ZSH_CACHE_DIR"