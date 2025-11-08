
# XDG Base Directories 
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# Redirect ZSH configuration to XDG config home
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZDOTCACHEDIR="$XDG_CACHE_HOME/zsh"

# Dotfiles
export DOTFILES="$HOME/.dotfiles"

# EDITOR
export EDITOR="nvim"
export VISUAL="nvim"

# Ensure zsh dirs exist
[[ -d $ZDOTDIR ]] || mkdir -p $ZDOTDIR
[[ -d $ZDOTCACHEDIR ]] || mkdir -p $ZDOTCACHEDIR
