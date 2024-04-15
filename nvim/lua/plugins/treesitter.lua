-- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = { "lua", "markdown_inline" },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
