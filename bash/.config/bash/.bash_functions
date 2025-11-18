# Helper functions for zsh configuration

load_git_completions() {
    if [ -f "$BASHDOTDIR/.git-completion.sh" ]; then
      source "$BASHDOTDIR/.git-completion.sh"
    else
      if command -v git &> /dev/null; then
        curl -s -o "$BASHDOTCACHEDIR/.git-completion.sh" https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
        source "$BASHDOTCACHEDIR/.git-completion.sh"
      fi
    fi
}