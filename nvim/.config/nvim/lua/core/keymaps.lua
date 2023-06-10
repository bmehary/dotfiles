
-- General NeoVim keymaps

vim.g.mapleader = " "

-- exit vim
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- replace esc key for exiting insert mode
vim.keymap.set("i", "jk", "<Esc>")

-- allows copying into system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- moves highlighted text up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- move half page up/down and center cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

