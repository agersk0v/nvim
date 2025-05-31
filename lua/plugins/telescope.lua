return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local builtin = require("telescope.builtin")
		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				-- Default configuration for telescope goes here:
				-- config_key = value,
			},
			pickers = {
				-- Default configuration for builtin pickers goes here:
				-- picker_name = {
				--   picker_config_key = value,
				--   ...
				-- }
				-- Now the picker_config_key will be applied every time you call this
				-- builtin picker
				find_files = {
					theme = "ivy",
				},
				live_grep = {
					theme = "ivy",
				},
			},
			extensions = {
				-- Your extension configuration goes here:
				-- extension_name = {
				--   extension_config_key = value,
				-- }
				-- please take a look at the readme of the extension you want to configure
			},
		})

		-- Key bindings
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
	end,
}
