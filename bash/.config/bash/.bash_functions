# Helper functions for zsh configuration

add_to_path() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$PATH:$1
    fi
}

add_to_path_front() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}

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