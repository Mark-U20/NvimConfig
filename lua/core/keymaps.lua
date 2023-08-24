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

-- whichkey setup
local wk = require("which-key")

wk.register({
  h = {":nohlsearch<CR>", "Highlight toggle"},
  e= {":NvimTreeToggle<CR>", "Open Explorer"},
  x = {":bdelete<cr>", "Close buffer"},
  b = {
  },
  L = {
    name = "lsp",
    f = {":lua vim.lsp.buf.format()<CR>", "Format File" },
  },
  T = {
    t = {":TransparentToggle<CR>", "Transparent Toggle"},
  },
  f = {
    name = "file",                                        -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
    -- r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false, buffer = 123 }, -- additional options for creating the keymap
    n = { "New File" },                                   -- just a label. don't create any mapping
    e = "Edit File",                                      -- same as above
    ["1"] = "which_key_ignore",                           -- special label to hide it in the popup
    b = { function() print("bar") end, "Foobar" }         -- you can also pass functions!
  },
  w = {":w<CR>", "Write File"},
}, { prefix = "<leader>" })

-- buffers
vim.keymap.set("n", "<S-l>", ":bnext<cr>")
vim.keymap.set("n", "<S-h>", ":bprev<cr>")


-- Rebind Ctrl + H to move left between splits
vim.api.nvim_set_keymap("n", "<C-H>", "<C-W>h", { noremap = true, silent = true })
-- Rebind Ctrl + L to move right between splits
vim.api.nvim_set_keymap("n", "<C-L>", "<C-W>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-W>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-W>k", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>Tt", ":TransparentToggle<CR>")
