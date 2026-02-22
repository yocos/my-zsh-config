# =============================================================================
# lazy.d/terraform.zsh — Lazy loader for Terraform
# =============================================================================
# Wraps the `terraform` command so that its built-in tab-completion is
# registered only on the first actual invocation.
# After the first call the wrapper removes itself (unfunction) and the real
# `terraform` binary is executed directly for all subsequent calls.
# =============================================================================

terraform() {
  unfunction terraform                              # remove this wrapper
  complete -o nospace -C terraform terraform        # register built-in completion
  terraform "$@"                                    # run the original command
}
