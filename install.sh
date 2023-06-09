#!/usr/bin/env zsh

# stow dotfiles
stow git
stow p10k
stow ssh
stow tmux
stow zsh


# load antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

# Bundle zsh plugins
antidote bundle <~/.zsh_plugins.txt >~/.zsh_plugins.zsh

