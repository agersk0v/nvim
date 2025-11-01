return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.rustywind,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.rustfmt,
				null_ls.builtins.formatting.csharpier,
			},
		})

		vim.keymap.set("n", "<leader>w", function()
			vim.cmd("w")
			vim.lsp.buf.format({ async = true })
		end, { noremap = true, silent = true })
	end,
}
