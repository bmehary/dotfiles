# NOTE: Consider moving to ~/.profile for login shells

# XDG Base Directories 
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share


echo "Hello from ~/.config/bash/.bash_profile"

source "$HOME/.config/bash/.bashrc"
