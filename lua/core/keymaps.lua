vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- enable clipboard
vim.opt.clipboard = "unnamedplus"

-- use spaces for tabs and whatnot

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- buffers
vim.keymap.set("n", "<S-l>", ":bnext<cr>")
vim.keymap.set("n", "<S-h>", ":bprev<cr>")
vim.keymap.set("n", "<Leader>x", ":bdelete<cr>")

-- Rebind Ctrl + H to move left between splits
vim.api.nvim_set_keymap("n", "<C-H>", "<C-W>h", { noremap = true, silent = true })
-- Rebind Ctrl + L to move right between splits
vim.api.nvim_set_keymap("n", "<C-L>", "<C-W>l", { noremap = true, silent = true })

-- Map <Leader> + w to save the current file
vim.api.nvim_set_keymap("n", "<Leader>w", ":w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>f", ":lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true })
