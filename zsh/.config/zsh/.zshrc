# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

## For help with zsh builtins and functions, run `man zshbuiltins`
## For help with zsh options, run `man zshoptions`
## For help with zsh modules, run `man zshmodules`
## For help with bash builtins run `help`

######## ZSH Configuration File ########
source $ZDOTDIR/zsh_aliases
source $ZDOTDIR/zsh_functions

# Load ZSH Plugins via Antidote (https://antidote.sh & https://github.com/mattmc3/antidote)
zsh_plugins=${ZDOTDIR}/zsh_plugins
update_antidote_bundle "$zsh_plugins" "$BREW_PREFIX"
source ${zsh_plugins}.zsh

# All custom functions and completions
for file in $ZDOTDIR/*.zsh; do
  source "$file"
done

# Initialize completions
autoload -Uz compinit && compinit


######## Set Paths ########

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

# Add ~/.local/bin to PATH if it exists and is not already there
if [ -d "$HOME/.local/bin" ]; then add_to_path_front "$HOME/.local/bin"; fi

# Dotfiles helper script
if [ -d "$DOTFILES" ]; then add_to_path_front "$DOTFILES"; fi

######## End of Set Paths ########

# History Configuration
[[ -d $XDG_CACHE_HOME/zsh ]] || mkdir -p $XDG_CACHE_HOME/zsh
export HISTFILE=$XDG_CACHE_HOME/zsh/history    # History filepath
export HISTSIZE=100000                         # Maximum events for internal history
export SAVEHIST=100000                         # Maximum events in history file
setopt append_history                          # Append new history lines to the history file
setopt extended_history                        # Save timestamps with history entries
setopt inc_append_history                      # Add new history lines incrementally to the file
setopt share_history                           # Share history between multiple Zsh sessions

# Use vi key bindings
bindkey -v
# Avoid the annoying backspace/delete issue, where backspace stops deleting characters
bindkey -v '^?' backward-delete-char
# set -o vi	# VI mode in bash scripts (for ref only)


# Completions
eval "$(pyenv init --path)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# NOTE: For java install SDKMAN! to manage java versions (http://sdkman.io/)
#   - Install java & maven via SDKMAN.

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
