local map = vim.keymap.set

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

vim.wo.number = true
vim.opt.relativenumber = true

map("n", "<leader>oc", ":cd ~/.config/nvim<CR>", {})

map("n", "<C-k>", ":wincmd k<CR>", {})
map("n", "<C-j>", ":wincmd j<CR>", {})
map("n", "<C-h>", ":wincmd h<CR>", {})
map("n", "<C-l>", ":wincmd l<CR>", {})

map('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
map('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
map('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
map('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
