
# Zsh helper functions
source "$ZDOTDIR/.zsh_functions"

# Disable macOS Shell Sessions feature
export SHELL_SESSIONS_DISABLE=1


# Set up Homebrew environment (eg. exports HOMEBREW_PREFIX, etc)
if [[ -f /opt/homebrew/bin/brew ]]; then
    # /opt/homebrew for arm64 macos
    eval $(/opt/homebrew/bin/brew shellenv)
elif [[ -f /usr/local/bin/brew ]]; then
    # /usr/local for intel macos
    eval $(/usr/local/bin/brew shellenv)
fi
