export EDITOR='code'
export VISUAL='code'
export PAGER='bat'
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

# ZSH config dir
export ZSH_DIR="$HOME/.zsh-new"
export ZSH_CACHE_DIR="$ZSH_DIR/cache"
[[ ! -d "$ZSH_CACHE_DIR" ]] && mkdir -p "$ZSH_CACHE_DIR"

export PATH="/opt/homebrew/opt/util-linux/bin:$PATH"
export PATH="/opt/homebrew/opt/util-linux/sbin:$PATH"

# activate color in ls
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad   # macOS
export LS_COLORS='di=1;34:ln=1;36:ex=1;32'  # Linux/completion colors