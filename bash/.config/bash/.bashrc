

# Zsh helper functions
source "$BASHDOTDIR/.bash_functions"

# All custom functions and completions
for file in $BASHDOTDIR/*.sh; do
  source "$file"
done

# History Configuration
export HISTFILE=$BASHDOTCACHEDIR/history       # History filepath
export HISTSIZE=100000                         # Maximum events for internal history

# COMMAND_PROMPT='history -a'

# Keybindings
set -o vi                                      # Enable vi keybindings

# Completions
eval "$(pyenv init --path)"
eval "$(zoxide init bash)"
source <(fzf --bash)