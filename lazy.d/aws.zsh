# =============================================================================
# lazy.d/aws.zsh — Lazy loader for the AWS CLI
# =============================================================================
# Wraps the `aws` command so that the AWS CLI completer is registered only
# on the first actual invocation, keeping shell startup fast.
# After the first call the wrapper removes itself (unfunction) and the real
# `aws` binary is executed directly for all subsequent calls.
# =============================================================================

aws() {
  unfunction aws                                  # remove this wrapper
  complete -C '/usr/local/bin/aws_completer' aws  # register the tab-completion engine
  aws "$@"                                        # run the original command
}
