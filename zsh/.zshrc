# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh_aliases
source ~/.zsh_functions
source ~/.zsh_plugins.zsh

# Initialize completions
autoload -Uz compinit && compinit


######## Set vi mode ########

# use vi key bindings
bindkey -v
# avoid the annoying backspace/delete issue, where backspace stops deleting characters
bindkey -v '^?' backward-delete-char

# VI mode in bash scripts (for ref only)
# set -o vi

######## End of vi mode ########


######## Set Paths ########

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Add Homebrew's sbin to path
add_to_path_front "${BREW_PREFIX}/sbin"

# GNU paths 
add_to_path_front "${BREW_PREFIX}/opt/coreutils/libexec/gnubin"
add_to_path_front "${BREW_PREFIX}/opt/findutils/libexec/gnubin"
add_to_path_front "${BREW_PREFIX}/opt/gnu-getopt/bin"
add_to_path_front "${BREW_PREFIX}/opt/gawk/libexec/gnubin"
add_to_path_front "${BREW_PREFIX}/opt/gnu-sed/libexec/gnubin"
add_to_path_front "${BREW_PREFIX}/opt/grep/libexec/gnubin"
add_to_path_front "${BREW_PREFIX}/opt/make/libexec/gnubin"

# NOTE: GOPATH and GOROOT may no longer be need in modern go. Consider removing.

# Go Paths
export GOPATH=$HOME/go-workspace 
export GOROOT=${BREW_PREFIX}/opt/go/libexec
add_to_path "${GOPATH}/bin:${GOROOT}/bin"

# NOTE: For java install SDKMAN! to manage java versions (http://sdkman.io/)
#   - Install java & maven via SDKMAN.

# Add ~/.local/bin to PATH if it exists and is not already there
if [ -d "$HOME/.local/bin" ]; then add_to_path_front "$HOME/.local/bin"; fi

# Dotfiles helper script
if [ -d "$HOME/.dotfiles" ]; then add_to_path_front "$HOME/.dotfiles"; fi


######## End of Set Paths ########


# NOTE: Consider removing antidote in the near future.

# Load antidote
source ${BREW_PREFIX}/opt/antidote/share/antidote/antidote.zsh
antidote load

# Completions
eval "$(pyenv init --path)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
