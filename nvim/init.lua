-- https://github.com/folke/lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

--local pid = vim.fn.getpid()

--local omnisharp_bin = "~/.local/bin/omnisharp-roslyn/OmniSharp"

--require("lspconfig").omnisharp.setup({
--    cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
--})
