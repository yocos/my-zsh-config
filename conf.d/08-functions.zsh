# Créer un dossier et s'y déplacer
mkcd() { mkdir -p "$1" && cd "$1" }

# Extraire n'importe quelle archive
extract() {
  case "$1" in
    *.tar.bz2) tar xjf "$1"   ;;
    *.tar.gz)  tar xzf "$1"   ;;
    *.tar.xz)  tar xJf "$1"   ;;
    *.zip)     unzip "$1"      ;;
    *.gz)      gunzip "$1"     ;;
    *.7z)      7z x "$1"       ;;
    *)         echo "Format inconnu : $1" ;;
  esac
}

# Recherche dans l'historique
hist() { history | grep "$1" }

# Affiche les ports en écoute
listening() { ss -tulpn | grep ":${1:-}" }

# kubectl : logs d'un pod par label
klogs() { kubectl logs -l "$1" --all-containers=true -f }

# AWS : switcher de profil facilement
awsp() {
  export AWS_PROFILE="$1"
  echo "AWS profile → $AWS_PROFILE"
}

# Git : clone et se déplace dans le repo
gclone() { git clone "$1" && cd "$(basename "$1" .git)" }