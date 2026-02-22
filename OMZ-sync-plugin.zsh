# Le repo OMZ contient tous les plugins
git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh.git $ZSH_DIR/temp/ohmyzsh-plugins-src

# Copier les plugins que tu veux
PLUGINS=(git docker aws)


for plugin in "${PLUGINS[@]}"; do
  src="$ZSH_DIR/temp/ohmyzsh-plugins-src/plugins/$plugin/$plugin.plugin.zsh"
  dst="$ZSH_DIR/plugins/$plugin.plugin.zsh"
  line="source \$ZSH_DIR/plugins/$plugin.plugin.zsh"

  if [[ -f "$src" ]]; then
    cp "$src" "$dst"
    # Ajoute la ligne seulement si elle n'existe pas déjà
    grep -qF "$line" $ZSH_DIR/conf.d/06-plugins.zsh || echo "$line" >> $ZSH_DIR/conf.d/06-plugins.zsh
    echo "✓ $plugin"
  else
    echo "✗ $plugin introuvable"
  fi
done

# Supprimer le clone, on n'en a plus besoin
rm -rf $ZSH_DIR/temp/ohmyzsh-plugins-src