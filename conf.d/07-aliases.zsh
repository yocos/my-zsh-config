# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'

# Listing (eza)
# alias ls='eza --icons --group-directories-first'
# alias ll='eza -la --icons --git --group-directories-first'
# alias lt='eza --tree --level=2 --icons'
# alias la='eza -a --icons'
alias l='ls -lFh'          #size,show type,human readable
alias la='ls -lAFh'        #long list,show almost all,show type,human readable
alias lr='ls -tRFh'        #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'        #long list,sorted by date,show type,human readable
alias ll='ls -l'           #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

# Fichiers
alias cat='bat --style=auto'
alias grep='rg'
alias find='fd'
alias du='dust'
alias df='duf'

# Git
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


# Terraform
alias tf='terraform'
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfd='terraform destroy'

# AWS
alias awsid='aws sts get-caller-identity'

# Divers
alias reload='source ~/.zshrc'
alias zshconfig='${EDITOR} ~/.zsh/conf.d/'
alias myip='curl -s ifconfig.me'
alias ports='ss -tulpn'