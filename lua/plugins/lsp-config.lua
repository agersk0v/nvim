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
					"omnisharp",
					"wgsl_analyzer",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local mason_registry = require("mason-registry")

			-- resolve omnisharp path installed by Mason
			local omnisharp_pkg = mason_registry.get_package("omnisharp")
			local omnisharp_path = omnisharp_pkg:get_install_path() .. "/bin/omnisharp"

			lspconfig.lua_ls.setup({})

			lspconfig.ts_ls.setup({})

			lspconfig.html.setup({})

			lspconfig.emmet_ls.setup({})

			lspconfig.tailwindcss.setup({})

			lspconfig.svelte.setup({})

			lspconfig.gopls.setup({})

			lspconfig.rust_analyzer.setup({})

			lspconfig.omnisharp.setup({
				cmd = { omnisharp_path, "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
				enable_editorconfig_support = true,
				enable_roslyn_analyzers = true,
				enable_import_completion = true,
				organize_imports_on_format = true,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open Diagnostic Float" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
