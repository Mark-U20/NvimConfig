local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)



local plugins = {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "folke/which-key.nvim",
  "nyoom-engineering/oxocarbon.nvim",
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  "rebelot/kanagawa.nvim",
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "nvim-lualine/lualine.nvim",
  "nvim-treesitter/nvim-treesitter",
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { { 'nvim-lua/plenary.nvim' } },
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  "jiangmiao/auto-pairs",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  "onsails/lspkind.nvim",
  "jose-elias-alvarez/null-ls.nvim",
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
    lazy = false,
  },
  "xiyaowong/transparent.nvim",
  "folke/tokyonight.nvim",
}


local opts = {}

require("lazy").setup(plugins, opts)
