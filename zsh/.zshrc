# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Initialize completions
autoload -U compinit && compinit

# Completions
eval "$(zoxide init zsh)"
source <(fzf --zsh)


# generate plugins
source ~/.zsh_plugins.zsh

source ~/.aliases
source ~/.functions

# use vi key bindings
bindkey -v
# avoid the annoying backspace/delete issue, where backspace stops deleting characters
bindkey -v '^?' backward-delete-char

# VI mode in bash scripts (for ref only)
# set -o vi

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Antidote path for Homebrew
source ${BREW_PREFIX}/opt/antidote/share/antidote/antidote.zsh
antidote load

# Go Paths
export GOPATH=$HOME/go-workspace # don't forget to change your path correctly!
export GOROOT=${BREW_PREFIX}/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin


# Java Paths
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-16.0.1.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-21.0.2.jdk/Contents/Home

# Python Paths
# Pyenv Paths
eval "$(pyenv init --path)"

# Poetry
export PATH="$HOME/.local/bin:$PATH"

#Terraform
export PATH="/usr/local/opt/terraform@0.12/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
