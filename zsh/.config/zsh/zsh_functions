

ismacos() {
	[[ $OSTYPE = *darwin* ]] || return 1
}


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

update_antidote_bundle() {
    local zsh_plugins="$1"
    local brew_prefix="$2"

    if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
      (
        echo loading antidote and generating ${zsh_plugins}.zsh...
        source ${brew_prefix}/opt/antidote/share/antidote/antidote.zsh
        antidote bundle <${zsh_plugins}.txt >${zsh_plugins}.zsh
      )
    fi  
}