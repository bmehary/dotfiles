# Helper functions for zsh configuration

load_git_completions() {
  local file="$BASHDOTCACHEDIR/.git-completion.sh"
  if [ -f "$file" ]; then
    source "$file"
  else
    if command -v git &> /dev/null; then
      curl -s -o "$file" https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
      source "$file"
    fi
  fi
}