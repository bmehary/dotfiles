# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh_aliases
source ~/.zsh_functions

# generate plugins
source ~/.zsh_plugins.zsh

# Initialize completions
autoload -U compinit && compinit

# Completions
eval "$(zoxide init zsh)"
source <(fzf --zsh)


# use vi key bindings
bindkey -v
# avoid the annoying backspace/delete issue, where backspace stops deleting characters
bindkey -v '^?' backward-delete-char

# VI mode in bash scripts (for ref only)
# set -o vi

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Add Homebrew's sbin to path
export PATH="${BREW_PREFIX}/sbin:$PATH"

# Antidote path for Homebrew
source ${BREW_PREFIX}/opt/antidote/share/antidote/antidote.zsh
antidote load

# Dotfiles helper script
export PATH="$HOME/.dotfiles:$PATH"

# GNU coreutils
export PATH="${BREW_PREFIX}/opt/coreutils/libexec/gnubin:$PATH"
# GNU findutils
export PATH="${BREW_PREFIX}/opt/findutils/libexec/gnubin:$PATH"
# GNU getopt
export PATH="${BREW_PREFIX}/opt/gnu-getopt/bin:$PATH"
# GNU awk
export PATH="${BREW_PREFIX}/opt/gawk/libexec/gnubin:$PATH"
# GNU sed
export PATH="${BREW_PREFIX}/opt/gnu-sed/libexec/gnubin:$PATH"
# GNU grep
export PATH="${BREW_PREFIX}/opt/grep/libexec/gnubin:$PATH"
# GNU make
export PATH="${BREW_PREFIX}/opt/make/libexec/gnubin:$PATH"

# Go Paths
export GOPATH=$HOME/go-workspace # don't forget to change your path correctly!
export GOROOT=${BREW_PREFIX}/opt/go/libexec
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

# Java Paths
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-16.0.1.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-21.0.2.jdk/Contents/Home

# Python Paths
# Pyenv Paths
eval "$(pyenv init --path)"

# Poetry
export PATH="$HOME/.local/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
