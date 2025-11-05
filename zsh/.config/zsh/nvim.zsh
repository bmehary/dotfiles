

nvim-list() {
    ls ~/.config ~/.local/share ~/.local/state ~/.cache
}

nvim-distro-clean() {
    __nvim-distro-clean nvim-kickstart
    __nvim-distro-clean nvim-lazy
    __nvim-distro-clean nvim-chad
    __nvim-distro-clean nvim-astro
}

nvim-distro-install() {
    # Kickstart, LazyVim, NvChad, AstroNvim
    git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/nvim-kickstart
    git clone https://github.com/LazyVim/starter ~/.config/nvim-lazy
    git clone https://github.com/NvChad/starter ~/.config/nvim-chad
    git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim-astro
}

__nvim-distro-clean() {
    return 0
    # $1 is the name of the nvim configuration to remove
    echo "removing $1"
    rm -rf ~/.config/$1
    rm -rf ~/.local/share/$1
    rm -rf ~/.local/state/$1
    rm -rf ~/.cache/$1
}

__nvim-distro-reset() {
    nvim-distro-clean
    nvim-distro-install
}

nvim-distro-reset() {
    echo "This will delete your Neovim configuration and data directories."
    echo "Are you sure you want to proceed? (y/N)"
    read -r response
    if [[ "$response" == "y" || "$response" == "Y" ]]; then
        __nvim-distro-reset
        echo "Neovim configuration and data directories have been reset."
    else
        echo "Operation cancelled."
    fi
}
