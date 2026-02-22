# .zsh-new

Configuration ZSH modulaire, sans framework externe (pas d'Oh-My-Zsh au runtime).
Rapide, lisible et facile à maintenir.

## Structure

```
.zsh-new/
├── conf.d/               # Modules chargés dans l'ordre numéroté
│   ├── 00-instant-prompt.zsh   # Powerlevel10k instant prompt
│   ├── 01-env.zsh              # Variables d'environnement
│   ├── 02-history.zsh          # Historique (taille, déduplication…)
│   ├── 03-completions.zsh      # Système de complétion + cache
│   ├── 04-keybinding.zsh       # Raccourcis clavier
│   ├── 05-options.zsh          # Options ZSH (AUTO_CD, CORRECT…)
│   ├── 06-plugins.zsh          # Chargement des plugins
│   ├── 07-aliases.zsh          # Alias
│   ├── 08-functions.zsh        # Fonctions utilitaires
│   ├── 09-tools.zsh            # Intégrations outils (nvm, pyenv…)
│   └── 10-prompt.zsh           # Thème Powerlevel10k
│
├── plugins/              # Plugins ZSH
│   ├── zsh-autosuggestions/    # Suggestions basées sur l'historique
│   ├── zsh-syntax-highlighting/ # Coloration syntaxique en temps réel
│   ├── zsh-completions/        # Completions additionnelles
│   ├── git.plugin.zsh          # Aliases git (depuis OMZ)
│   ├── docker.plugin.zsh       # Aliases docker (depuis OMZ)
│   └── aws.plugin.zsh          # Aliases aws (depuis OMZ)
│
├── lazy.d/               # Modules chargés à la demande
│   ├── aws.zsh                 # Config AWS (chargée si besoin)
│   └── terraform.zsh           # Config Terraform (chargée si besoin)
│
├── themes/
│   └── powerlevel10k/          # Thème Powerlevel10k (clone local)
│
├── cache/                # Cache ZSH (gitignored)
├── temp/                 # Fichiers temporaires (gitignored)
└── OMZ-sync-plugin.zsh   # Script pour synchroniser les plugins depuis OMZ
```

## Installation

**1. Cloner le repo avec ses sous-modules en une seule commande**

```zsh
git clone --recurse-submodules <url-du-repo> ~/.zsh-new
```

> Si le repo a déjà été cloné sans `--recurse-submodules` :
> ```zsh
> git submodule update --init --recursive
> ```

**3. Synchroniser les plugins Oh-My-Zsh** (optionnel)

Le script `OMZ-sync-plugin.zsh` clone temporairement OMZ, copie les plugins
souhaités dans `plugins/`, puis supprime le clone.

```zsh
# Définir ZSH_DIR si ce n'est pas encore fait
export ZSH_DIR="$HOME/.zsh-new"
zsh OMZ-sync-plugin.zsh
```

**4. Sourcer depuis `.zshrc`**

```zsh
# ZSH config dir pour le test parallèle
export ZSH_DIR="$HOME/.zsh-new"
export ZSH_CACHE_DIR="$ZSH_DIR/cache"

# Chargement de tous les modules
for f in "$ZSH_DIR"/conf.d/*.zsh; do source "$f"; done
```

## Personnalisation

- **Ajouter un alias / une fonction** : éditer `conf.d/07-aliases.zsh` ou `conf.d/08-functions.zsh`
- **Changer l'éditeur ou le pager** : éditer `conf.d/01-env.zsh`
- **Ajouter un plugin** : le déposer dans `plugins/` et le sourcer dans `conf.d/06-plugins.zsh`
- **Charger un outil à la demande** : créer un fichier dans `lazy.d/` et le sourcer conditionnellement

## Thème

[Powerlevel10k](https://github.com/romkatv/powerlevel10k) avec configuration existante `~/.p10k.zsh`.
Pour reconfigurer le prompt : `p10k configure`
