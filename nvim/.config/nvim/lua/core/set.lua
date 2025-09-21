
-- Sets default options
-- Docs @ https://neovim.io/doc/user/quickref.html#option-list 

-- show line numbers and make them relative
vim.opt.number = true
vim.opt.relativenumber = true

-- set tab spacing
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false


vim.opt.hlsearch = true
vim.opt.incsearch = true

-- scrolloff keeps X amount of chars
vim.opt.scrolloff = 8

vim.opt.colorcolumn = "80"

vim.opt.updatetime = 50

-- Copy into system clipboard
vim.opt.clipboard = "unnamedplus"

