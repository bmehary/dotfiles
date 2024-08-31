#!/usr/bin/env zsh


# TODO:
# Create folders for stow files, if they don't exist, before stowing (below).
# For folders like ~/.ssh & ~/.gnupg, run chmod 700
# 
# To create SSH keys:
# ssh-keygen


# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# stow dotfiles
stow git
stow p10k
stow ssh
stow tmux
stow zsh
stow gpg --no-folding


# load antidote
source ${BREW_PREFIX}/opt/antidote/share/antidote/antidote.zsh

# Bundle zsh plugins
antidote bundle <~/.zsh_plugins.txt >~/.zsh_plugins.zsh

