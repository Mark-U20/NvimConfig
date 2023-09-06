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
    h = { ":nohlsearch<CR>", "Highlight toggle" },
    ["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment toggle current line" },
    -- ["c"] = { ":BufferKill<CR>", "Close Buffer" },
    e = { ":NvimTreeToggle<CR>", "Open Explorer" },
    x = { ":Bdelete<cr>", "Close buffer" },
    d = {
      name = "Debug",
      t = { ":lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
      b = { ":lua require'dap'.step_back()<cr>", "Step Back" },
      c = { ":lua require'dap'.continue()<cr>", "Continue" },
      C = { ":lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
      d = { ":lua require'dap'.disconnect()<cr>", "Disconnect" },
      g = { ":lua require'dap'.session()<cr>", "Get Session" },
      i = { ":lua require'dap'.step_into()<cr>", "Step Into" },
      o = { ":lua require'dap'.step_over()<cr>", "Step Over" },
      u = { ":lua require'dap'.step_out()<cr>", "Step Out" },
      p = { ":lua require'dap'.pause()<cr>", "Pause" },
      r = { ":lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
      s = { ":lua require'dap'.continue()<cr>", "Start" },
      q = { ":lua require'dap'.close()<cr>", "Quit" },
      U = { ":lua require'dapui'.toggle({reset = true})<cr>", "Toggle UI" },
    },
    b = {
    },
    L = {
      name = "lsp",
      f = { ":lua vim.lsp.buf.format()<CR>", "Format File" },
      a = { ":lua vim.lsp.buf.code_action()<cr>", "Code Action" },
      d = { ":Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Buffer Diagnostics" },
      w = { ":Telescope diagnostics<cr>", "Diagnostics" },
      i = { ":LspInfo<cr>", "Info" },
      h = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover" },
      I = { ":Mason<cr>", "Mason Info" },
      j = {
        ":lua vim.diagnostic.goto_next()<cr>",
        "Next Diagnostic",
      },
      k = {
        ":lua vim.diagnostic.goto_prev()<cr>",
        "Prev Diagnostic",
      },
      l = { ":lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
      q = { ":lua vim.diagnostic.setloclist()<cr>", "Quickfix" },
      r = { ":lua vim.lsp.buf.rename()<cr>", "Rename" },
      s = { ":Telescope lsp_document_symbols<cr>", "Document Symbols" },
      S = {
        "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
        "Workspace Symbols",
      },
      e = { "<cmd>Telescope quickfix<cr>", "Telescope Quickfix" },


    },
    T = {
      t = { ":TransparentToggle<CR>", "Transparent Toggle" },
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
    w = { ":w<CR>", "Write File" },
    g = {
      name = "Git",
      g = { ":lua require 'lvim.core.terminal'.lazygit_toggle()<cr>", "Lazygit" },
      j = { ":lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", "Next Hunk" },
      k = { ":lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", "Prev Hunk" },
      l = { ":lua require 'gitsigns'.blame_line()<cr>", "Blame" },
      p = { ":lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
      r = { ":lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
      R = { ":lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
      s = { ":lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
      u = {
        ":lua require 'gitsigns'.undo_stage_hunk()<cr>",
        "Undo Stage Hunk",
      },
      o = { ":Telescope git_status<cr>", "Open changed file" },
      b = { ":Telescope git_branches<cr>", "Checkout branch" },
      c = { ":Telescope git_commits<cr>", "Checkout commit" },
      C = {
        ":Telescope git_bcommits<cr>",
        "Checkout commit(for current file)",
      },
      d = {
        ":Gitsigns diffthis HEAD<cr>",
        "Git Diff",
      },
    },
    s = {
      name = "Search",
      b = { ":Telescope git_branches<cr>", "Checkout branch" },
      c = { ":Telescope colorscheme<cr>", "Colorscheme" },
      f = { ":Telescope find_files<cr>", "Find File" },
      h = { ":Telescope help_tags<cr>", "Find Help" },
      H = { ":Telescope highlights<cr>", "Find highlight groups" },
      M = { ":Telescope man_pages<cr>", "Man Pages" },
      r = { ":Telescope oldfiles<cr>", "Open Recent File" },
      R = { ":Telescope registers<cr>", "Registers" },
      t = { ":Telescope live_grep<cr>", "Text" },
      k = { ":Telescope keymaps<cr>", "Keymaps" },
      C = { ":Telescope commands<cr>", "Commands" },
      l = { ":Telescope resume<cr>", "Resume last search" },
      p = {
        ":lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
        "Colorscheme with Preview",
      },
    },
    -- ufo fold keymaps
    z = {
      name = "Fold",
      R = { ":lua require('ufo').openAllFolds()<cr>", "Open All Folds" },
      M = { ":lua require('ufo').closeAllFolds()<cr>", "Close All Folds" },
      r = { ":lua require('ufo').openFoldsExceptKinds()<cr>", "Open Folds Except Kinds" },
      m = { ":lua require('ufo').closeFoldsWith()<cr>", "Close Folds With" },
      K = { ":lua require('ufo').peekFoldedLinesUnderCursor()<cr>", "Peek Folded Lines Under Cursor" },
    },
    -- keymap for buf hover

  },
  { prefix = "<leader>" })


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

