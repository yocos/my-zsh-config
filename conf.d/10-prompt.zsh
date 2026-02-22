# =============================================================================
# 10-prompt.zsh — Prompt theme (Powerlevel10k)
# =============================================================================
# Sources Powerlevel10k from the local submodule clone so no internet access
# is required after the initial setup.
# The existing ~/.p10k.zsh configuration is reused as-is — there is no need
# to run `p10k configure` again unless you want to change the prompt layout.
# =============================================================================

# Load Powerlevel10k theme from the local submodule
source ~/.zsh-new/themes/powerlevel10k/powerlevel10k.zsh-theme

# Apply existing Powerlevel10k configuration if present
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
