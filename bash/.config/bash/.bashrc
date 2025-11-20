

# Zsh helper functions
source "$BASHDOTDIR/.bash_functions"

# All custom functions and completions
shopt -s nullglob
for file in $BASHDOTDIR/*.sh; do
  source "$file"
done
shopt -u nullglob

# Git completions
load_git_completions

# History Configuration
export HISTFILE=$BASHDOTCACHEDIR/history       # History filepath
export HISTSIZE=100000                         # Maximum events for internal history

# COMMAND_PROMPT='history -a'

# Keybindings
set -o vi                                      # Enable vi keybindings

# Completions
[[ -x "$(command -v fzf)" ]] && source <(fzf --bash)
[[ -x "$(command -v pyenv)" ]] && eval "$(pyenv init --path)"
[[ -x "$(command -v zoxide)" ]] && eval "$(zoxide init bash)"