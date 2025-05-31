return {
	"stevearc/oil.nvim",
	dependencies = {
		"echasnovski/mini.icons",
	},
	config = function()
		require("oil").setup({
			-- Optional: Customize columns (like icons)
			columns = {
				"icon", -- uses mini.icons if available
			},
			-- Open oil in a floating window
			view_options = {
				show_hidden = true,
			},
			-- Key mappings can be customized inside Oil, or via vim.keymap.set
		})

		-- Keymap to open Oil in the current directory
		vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory in oil.nvim" })
	end,
}
