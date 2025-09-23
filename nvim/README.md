## Created nvim config from 

- ThePrimeagen
    - [Github](https://github.com/ThePrimeagen/init.lua)
    - [Youtube](https://www.youtube.com/watch?v=w7i4amO_zaE&t)

- Typecraft
    - [Github](https://github.com/cpow/cpow-dotfiles)
    - [Youtube](https://www.youtube.com/watch?v=lpQMeFph1RE)


[Nvim Tree commands](https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt)


## TODO List

- Add formatting, linters, etc. Maybe using [null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim)
- Debugging
    - [Neovim for Beginners (Medium article)](https://alpha2phi.medium.com/neovim-for-beginners-debugging-using-dap-44626a767f57)
        - [Repo](https://github.com/alpha2phi/neovim-for-beginner/tree/16-dap1)
    - Youtube links
        - https://www.youtube.com/watch?v=4BnVeOUeZxc
        - https://www.youtube.com/watch?v=gihHLsClHF0



## To install nvim configs from scratch
- Run:
`git clone --depth 1 https://github.com/wbthomason/packer.nvim
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
- To manually sync packages `:PackerSync`
- To install languages for LSP `:Mason`


## To Uninstall nvim configs
- Run: 
    ```
    rm -rf ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
    ```

## Nvim Config Switching #####

### Install nvim distro/configs
See shell aliases for how to call these distros using [NVIM_APPNAME](https://neovim.io/doc/user/starting.html#_nvim_appname)
- [Kickstart](https://github.com/nvim-lua/kickstart.nvim/tree/master)
    ```
    git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/nvim-kickstart
    ```
- [Lazyvim](https://github.com/LazyVim/LazyVim)
    ```
    git clone https://github.com/LazyVim/starter ~/.config/nvim-lazy
    ```