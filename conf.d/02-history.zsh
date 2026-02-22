# =============================================================================
# 02-history.zsh — Shell history configuration
# =============================================================================
# Configures ZSH history: file location, size limits, and deduplication/
# sharing behaviour. A large history is kept so searches remain useful
# across long-lived sessions.
# =============================================================================

HISTFILE=~/.zsh_history   # persistent history file
HISTSIZE=100000            # number of entries kept in memory
SAVEHIST=100000            # number of entries written to HISTFILE

setopt HIST_IGNORE_DUPS      # don't record a command if identical to the previous one
setopt HIST_IGNORE_ALL_DUPS  # remove older duplicates when a new entry is added
setopt HIST_IGNORE_SPACE     # don't record commands that start with a space
setopt HIST_FIND_NO_DUPS     # don't show duplicates when searching history
setopt HIST_REDUCE_BLANKS    # strip superfluous whitespace before recording
setopt SHARE_HISTORY         # share history in real-time across all open sessions
setopt EXTENDED_HISTORY      # record timestamp and elapsed time for each command
