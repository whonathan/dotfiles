local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup({
  'folke/tokyonight.nvim',
  'projekt0n/github-nvim-theme',
  'nvim-treesitter/nvim-treesitter',
  'nvim-lualine/lualine.nvim',
  {
    'nvim-tree/nvim-tree.lua',
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
  },
  {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lua',
  },
  --[[
  {
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
  },
  --]]
  --'tpope/vim-sleuth', -- detect tabstop
  --'lukas-reineke/indent-blankline.nvim', -- detect indent
  --'windwp/nvim-autopairs', -- auto pairs symbols
  --'numToStr/Comment.nvim', -- comment visual regions/lines
  --'lewis6991/gitsigns.nvim', -- git support
  --'tpope/vim-fugitive', -- git support
  --'tpope/vim-rhubarb', -- git support
})
