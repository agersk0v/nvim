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
vim.keymap.set("n", "<leader>q", function()
    vim.cmd("wq")
end, { noremap = true, silent = true })
