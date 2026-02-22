# =============================================================================
# 05-options.zsh — ZSH shell options
# =============================================================================
# Enables quality-of-life shell behaviours via setopt.
# All options are additive — nothing from the default ZSH configuration
# is disabled here.
# =============================================================================

setopt AUTO_CD             # type a directory name to cd into it without writing 'cd'
setopt CORRECT             # suggest corrections for mistyped commands
setopt NO_CASE_GLOB        # case-insensitive glob matching
setopt GLOB_DOTS           # include dotfiles in glob patterns without an explicit leading dot
setopt EXTENDED_GLOB       # enable extended glob operators (#, ~, ^)
setopt NULL_GLOB           # silently remove unmatched globs instead of raising an error
setopt INTERACTIVE_COMMENTS  # allow # comments in interactive shell sessions
setopt AUTO_PUSHD          # make cd push the previous directory onto the stack automatically
setopt PUSHD_IGNORE_DUPS   # don't push duplicate directories onto the stack
setopt PUSHD_SILENT        # suppress the directory stack printout after pushd/popd
