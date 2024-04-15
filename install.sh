#!/usr/bin/env zsh


# TODO:
# Create folders for stow files, if they don't exist, before stowing (below).
# For folders like ~/.ssh & ~/.gnupg, run chmod 700


# stow dotfiles
stow git
stow p10k
stow ssh
stow tmux
stow zsh
stow gpg --no-folding


# load antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

# Bundle zsh plugins
antidote bundle <~/.zsh_plugins.txt >~/.zsh_plugins.zsh

