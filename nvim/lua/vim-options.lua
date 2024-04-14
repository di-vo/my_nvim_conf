local map = vim.keymap.set

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

vim.wo.number = true

map("n", "<leader>oc", ":cd ~/.config/nvim<CR>", {})

map("n", "<C-k>", ":wincmd k<CR>", {})
map("n", "<C-j>", ":wincmd j<CR>", {})
map("n", "<C-h>", ":wincmd h<CR>", {})
map("n", "<C-l>", ":wincmd l<CR>", {})
