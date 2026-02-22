# =============================================================================
# OMZ-sync-plugin.zsh — Sync selected plugins from Oh-My-Zsh
# =============================================================================
# This script is meant to be run manually (not sourced at shell startup).
# It performs a shallow clone of the Oh-My-Zsh repository into a temporary
# directory, copies the desired plugin files into $ZSH_DIR/plugins/, appends
# the corresponding source lines to 06-plugins.zsh if not already present,
# then removes the temporary clone.
#
# Usage:
#   export ZSH_DIR="$HOME/.zsh-new"
#   zsh OMZ-sync-plugin.zsh
#
# To add more plugins, extend the PLUGINS array below.
# =============================================================================

# Shallow-clone OMZ so we only download what we need
git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh.git $ZSH_DIR/temp/ohmyzsh-plugins-src

# List of OMZ plugins to extract
PLUGINS=(git docker aws)

for plugin in "${PLUGINS[@]}"; do
  src="$ZSH_DIR/temp/ohmyzsh-plugins-src/plugins/$plugin/$plugin.plugin.zsh"
  dst="$ZSH_DIR/plugins/$plugin.plugin.zsh"
  line="source \$ZSH_DIR/plugins/$plugin.plugin.zsh"

  if [[ -f "$src" ]]; then
    cp "$src" "$dst"
    # Append the source line to 06-plugins.zsh only if it isn't already there
    grep -qF "$line" $ZSH_DIR/conf.d/06-plugins.zsh || echo "$line" >> $ZSH_DIR/conf.d/06-plugins.zsh
    echo "✓ $plugin"
  else
    echo "✗ $plugin not found"
  fi
done

# Clean up — the temporary clone is no longer needed
rm -rf $ZSH_DIR/temp/ohmyzsh-plugins-src
