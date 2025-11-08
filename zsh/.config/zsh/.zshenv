
# Dotfiles
export DOTFILES="$HOME/.dotfiles"

# XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# EDITOR
export EDITOR="nvim"
export VISUAL="nvim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Ensure zsh dirs exist
[[ -d $XDG_CONFIG_HOME/zsh ]] || mkdir -p $XDG_CONFIG_HOME/zsh
[[ -d $XDG_CACHE_HOME/zsh ]] || mkdir -p $XDG_CACHE_HOME/zsh
