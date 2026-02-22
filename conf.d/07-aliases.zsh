# =============================================================================
# 07-aliases.zsh — Shell aliases
# =============================================================================
# Short command aliases grouped by topic.
# Modern CLI replacements (bat, rg, fd, dust, duf) are used where available.
# The eza-based listing aliases are kept commented out as an alternative.
# =============================================================================

# --- Directory navigation ---
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'

# --- File listing ---
# Modern alternative using eza (uncomment if eza is installed):
# alias ls='eza --icons --group-directories-first'
# alias ll='eza -la --icons --git --group-directories-first'
# alias lt='eza --tree --level=2 --icons'
# alias la='eza -a --icons'
alias l='ls -lFh'      # long list with types and human-readable sizes
alias la='ls -lAFh'    # long list including hidden files
alias lr='ls -tRFh'    # recursive, sorted by date
alias lt='ls -ltFh'    # long list sorted by date
alias ll='ls -l'       # plain long list
alias ldot='ls -ld .*' # show only dotfiles
alias lS='ls -1FSsh'   # sort by size
alias lart='ls -1Fcart' # sort by access time, reversed
alias lrt='ls -1Fcrt'  # sort by modification time, reversed

# --- Modern CLI replacements ---
alias cat='bat --style=auto'  # bat: syntax-highlighted cat
alias grep='rg'               # ripgrep: faster grep
alias find='fd'               # fd: simpler find
alias du='dust'               # dust: intuitive disk usage
alias df='duf'                # duf: prettier df

# --- Git ---
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gd='git diff'
alias glog='git log --oneline --graph --decorate'
alias gb='git branch'
alias gco='git checkout'
alias gcb='git checkout -b'

# --- Terraform ---
alias tf='terraform'
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfd='terraform destroy'

# --- AWS ---
alias awsid='aws sts get-caller-identity'  # print current IAM identity

# --- Misc ---
alias reload='source ~/.zshrc'               # reload shell config
alias zshconfig='${EDITOR} ~/.zsh/conf.d/'  # open config directory in editor
alias myip='curl -s ifconfig.me'            # print public IP address
alias ports='ss -tulpn'                     # list all listening ports
