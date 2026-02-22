source $ZSH_DIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_DIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=1

# Chargement de tous les lazy loaders
for lazy_file in $ZSH_DIR/lazy.d/*.zsh; do
  source "$lazy_file"
done

source $ZSH_DIR/plugins/git.plugin.zsh
source $ZSH_DIR/plugins/docker.plugin.zsh
source $ZSH_DIR/plugins/aws.plugin.zsh
