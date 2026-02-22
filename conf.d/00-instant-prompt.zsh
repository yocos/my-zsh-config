# =============================================================================
# 00-instant-prompt.zsh — Powerlevel10k instant prompt
# =============================================================================
# Must be sourced at the very top of the ZSH config, before any output.
# Enables Powerlevel10k's instant prompt feature: the prompt is rendered
# immediately from a cache while the rest of the shell initialisation loads
# in the background, eliminating perceived startup delay.
# The cache file is user-specific and stored under XDG_CACHE_HOME (defaults
# to ~/.cache if the variable is not set).
# =============================================================================

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
