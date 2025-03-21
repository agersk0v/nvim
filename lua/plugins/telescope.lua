return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
	},
	config = function()
		local builtin = require("telescope.builtin")
		local telescope = require("telescope")
		local file_browser = require("telescope").extensions.file_browser.file_browser

		-- Load the file browser extension
		telescope.load_extension("file_browser")

		-- Key bindings
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fb", file_browser, { desc = "Telescope file browser" })
	end,
}
