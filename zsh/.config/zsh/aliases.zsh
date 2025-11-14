
# Reload ZSH configuration
alias rc='source $ZDOTDIR/.zshrc && echo "ZSH Reloaded!"'

# For interactive shells, load .bash_profile when invocating bash from zsh
[[ -f "$HOME/.bash_profile" ]] && alias bash='bash --rcfile $HOME/.bash_profile'

# Change directory aliases
[[ -x "$(command -v zoxide)" ]] && alias cd='z'
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

# Neovim distro aliases 
if [[ -x "$(command -v nvim)" ]]; then
    alias kickvim='NVIM_APPNAME="nvim-kickstart" nvim'
    alias lazyvim='NVIM_APPNAME="nvim-lazy" nvim'
    alias chadvim='NVIM_APPNAME="nvim-chad" nvim'
    alias astrovim='NVIM_APPNAME="nvim-astro" nvim'

    alias vim='kickvim'
fi

# Useful tool aliases
[[ -x "$(command -v bat)" ]] && alias cat='bat'
[[ -x "$(command -v git)" ]] && alias g='git'
[[ -x "$(command -v kubectl)" ]] && alias k='kubectl'

[[ -x "$(command -v diff)" ]] && alias diff='diff --color'
