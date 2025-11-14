# NOTE: Consider moving to ~/.profile for login shells

# XDG Base Directories 
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

export BASHDOTDIR="$XDG_CONFIG_HOME/bash"
export BASHDOTCACHEDIR="$XDG_CACHE_HOME/bash"

# Ensure zsh dirs exist
[[ -d $BASHDOTDIR ]] || mkdir -p $BASHDOTDIR
[[ -d $BASHDOTCACHEDIR ]] || mkdir -p $BASHDOTCACHEDIR

# Source bash config
source "$BASHDOTDIR/.bashrc"
