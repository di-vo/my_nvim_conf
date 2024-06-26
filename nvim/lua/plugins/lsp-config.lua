return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- add new lsp name here
				ensure_installed = { "lua_ls", "tsserver", "clangd", "csharp_ls", "gopls", "rust_analyzer" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			-- add new lsp setup here
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})

			lspconfig.clangd.setup({
				capabilities = capabilities,
			})

			lspconfig.csharp_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.gopls.setup({
				capabilities = capabilities,
			})

			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})

            local map = vim.keymap.set
			map("n", "K", vim.lsp.buf.hover, {})
			map("n", "<leader>gd", vim.lsp.buf.definition, {})
			map("n", "<leader>gr", vim.lsp.buf.references, {})
			map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
            map("n", "<leader>rn", vim.lsp.buf.rename, {})
		end,
	},
}
