
-- To integrate with VSCode, make sure to point to the correct instance of nvim using the `which nvim` command
-- Remember to install lua-language-server via Mason in neovim standalone

print("Initializing neovim")

if vim.g.vscode then
    -- VSCode extension
    print("Loading Neovim configuration for VS Code...")
else
    -- ordinary Neovim
    print("Loading Neovim configuration for standalone use...")

    require('core')
end

print("all done")
