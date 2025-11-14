
# VI Mode
set -o vi

# COMMAND_PROMPT='history -a'

# History Configuration
export HISTFILE=$BASHDOTCACHEDIR/history       # History filepath
export HISTSIZE=100000                         # Maximum events for internal history

# Completions
eval "$(pyenv init --path)"
eval "$(zoxide init bash)"
source <(fzf --bash)