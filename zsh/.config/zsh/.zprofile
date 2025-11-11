
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

# Set homebrew paths to override macOS default tools
if [[ -n "$HOMEBREW_PREFIX" ]]; then
  # Add Homebrew's sbin to path
  add_to_path_front "${HOMEBREW_PREFIX}/sbin"

  # Override macos BSD variants w/ GNU versions (normally prefixed with g) 
  add_to_path_front "${HOMEBREW_PREFIX}/opt/coreutils/libexec/gnubin"
  add_to_path_front "${HOMEBREW_PREFIX}/opt/findutils/libexec/gnubin"
  add_to_path_front "${HOMEBREW_PREFIX}/opt/gnu-getopt/bin"
  add_to_path_front "${HOMEBREW_PREFIX}/opt/gawk/libexec/gnubin"
  add_to_path_front "${HOMEBREW_PREFIX}/opt/gnu-sed/libexec/gnubin"
  add_to_path_front "${HOMEBREW_PREFIX}/opt/grep/libexec/gnubin"
  add_to_path_front "${HOMEBREW_PREFIX}/opt/make/libexec/gnubin"
fi
