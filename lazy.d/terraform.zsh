terraform() {
  unfunction terraform
  complete -o nospace -C terraform terraform
  terraform "$@"
}