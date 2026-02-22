# My ZSH config

Modular ZSH configuration with no runtime framework (no Oh-My-Zsh at startup).
Fast, readable, and easy to maintain.

## Structure

```
.zsh-new/
├── conf.d/               # Modules loaded in numbered order
│   ├── 00-instant-prompt.zsh   # Powerlevel10k instant prompt
│   ├── 01-env.zsh              # Environment variables
│   ├── 02-history.zsh          # History (size, deduplication…)
│   ├── 03-completions.zsh      # Completion system + cache
│   ├── 04-keybinding.zsh       # Key bindings
│   ├── 05-options.zsh          # ZSH options (AUTO_CD, CORRECT…)
│   ├── 06-plugins.zsh          # Plugin loading
│   ├── 07-aliases.zsh          # Aliases
│   ├── 08-functions.zsh        # Utility functions
│   ├── 09-tools.zsh            # Tool integrations (nvm, pyenv…)
│   └── 10-prompt.zsh           # Powerlevel10k theme
│
├── plugins/              # ZSH plugins
│   ├── zsh-autosuggestions/    # History-based suggestions
│   ├── zsh-syntax-highlighting/ # Real-time syntax highlighting
│   ├── zsh-completions/        # Additional completions
│   ├── git.plugin.zsh          # Git aliases (from OMZ)
│   ├── docker.plugin.zsh       # Docker aliases (from OMZ)
│   └── aws.plugin.zsh          # AWS aliases (from OMZ)
│
├── lazy.d/               # On-demand loaded modules
│   ├── aws.zsh                 # AWS config (loaded on first use)
│   └── terraform.zsh           # Terraform config (loaded on first use)
│
├── themes/
│   └── powerlevel10k/          # Powerlevel10k theme (local submodule)
│
├── cache/                # ZSH cache (gitignored)
├── temp/                 # Temporary files (gitignored)
└── OMZ-sync-plugin.zsh   # Script to sync plugins from Oh-My-Zsh
```

## Installation

**1. Clone the repo with its submodules in one command**

```zsh
git clone --recurse-submodules <repo-url> ~/.zsh-new
```

> If the repo was already cloned without `--recurse-submodules`:
>
> ```zsh
> git submodule update --init --recursive
> ```

**2. Sync Oh-My-Zsh plugins** (optional)

The `OMZ-sync-plugin.zsh` script temporarily clones OMZ, copies the desired
plugin files into `plugins/`, then removes the clone.

```zsh
# Set ZSH_DIR if not already defined
export ZSH_DIR="$HOME/.zsh-new"
zsh OMZ-sync-plugin.zsh
```

**3. Source from `.zshrc`**

```zsh
export ZSH_DIR="$HOME/.zsh-new"
export ZSH_CACHE_DIR="$ZSH_DIR/cache"

# Load all modules in order
for f in "$ZSH_DIR"/conf.d/*.zsh; do source "$f"; done
```

## Customisation

- **Add an alias or function**: edit `conf.d/07-aliases.zsh` or `conf.d/08-functions.zsh`
- **Change the editor or pager**: edit `conf.d/01-env.zsh`
- **Add a plugin**: drop it in `plugins/` and source it in `conf.d/06-plugins.zsh`
- **Lazy-load a tool**: create a file in `lazy.d/` and source it conditionally

## Theme

[Powerlevel10k](https://github.com/romkatv/powerlevel10k) using the existing `~/.p10k.zsh` config.
To reconfigure the prompt: `p10k configure`
