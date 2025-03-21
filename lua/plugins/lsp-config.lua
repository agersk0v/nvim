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
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"html",
					"emmet_ls",
					"tailwindcss",
					"svelte",
					"gopls",
					"rust_analyzer",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({})

			lspconfig.ts_ls.setup({})

			lspconfig.html.setup({})

			lspconfig.emmet_ls.setup({})

			lspconfig.tailwindcss.setup({})

			lspconfig.svelte.setup({})

			lspconfig.gopls.setup({})

			lspconfig.rust_analyzer.setup({})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
