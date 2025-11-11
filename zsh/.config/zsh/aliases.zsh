
alias cd='z'
alias ..='cd ..'
alias ...='cd ../..'

# Add color to folders
if [[ -x "$(command -v eza)" ]]; then
    alias ls='eza --icons --git'
    alias ll="eza --icons --git --long"
else
    alias ls='ls --color'
    alias ll='ls -alF'
fi

alias diff='diff --color'

# Reload ZSH configuration
alias rz='source $ZDOTDIR/.zshrc && echo "ZSH Reloaded!"'

##### NVIM Config Switching #####
alias kickvim='NVIM_APPNAME="nvim-kickstart" nvim'
alias lazyvim='NVIM_APPNAME="nvim-lazy" nvim'
alias chadvim='NVIM_APPNAME="nvim-chad" nvim'
alias astrovim='NVIM_APPNAME="nvim-astro" nvim'

alias vim='kickvim'

# Useful tool aliases
[[ -x "$(command -v bat)" ]] && alias cat='bat'
[[ -x "$(command -v git)" ]] && alias g='git'
[[ -x "$(command -v kubectl)" ]] && alias k='kubectl'
