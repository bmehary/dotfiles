#!/usr/bin/env zsh

# stow dotfiles
#stow git
#stow ssh
#stow p10k
#stow zsh


# load antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

# Bundle zsh plugins
antidote bundle <~/.zsh_plugins.txt >~/.zsh_plugins.zsh
