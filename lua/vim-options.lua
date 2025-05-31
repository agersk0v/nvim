-- Set relative line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- Set clipboard to use the system clipboard
vim.opt.clipboard = "unnamedplus"

-- Disable line wrapping
vim.opt.wrap = false

-- Set tab width and indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Set up key mapping (example: map leader key to space)
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>qw", function()
	vim.defer_fn(function()
		vim.cmd("wq!")
	end, 0)
end, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>qq", function()
	vim.defer_fn(function()
		vim.cmd("q!")
	end, 0)
end, { noremap = true, silent = true })

-- Move line down in normal mode
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
-- Move line up in normal mode
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

-- Move selected lines down in visual mode
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
-- Move selected lines up in visual mode
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Set up diagnostic appearance
vim.diagnostic.config({
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
})
