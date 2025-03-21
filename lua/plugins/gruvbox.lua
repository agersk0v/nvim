return {

	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("gruvbox")

		--Set transparent background
		vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
	end,
}
