aws() {
  unfunction aws
  complete -C '/usr/local/bin/aws_completer' aws
  aws "$@"
}