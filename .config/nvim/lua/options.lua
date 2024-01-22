local mod = {
  mapleader = ' ',
  loaded_netrw = 1,
  loaded_netrwPlugin = 1,
  markdown_recommended_style = 0
}

local options = {
  hlsearch = false,
  showmode = false,
  swapfile = false,
  wrap = false,
  number = true,
  undofile = true,
  expandtab = true,
  splitbelow = true,
  cursorline = true,
  splitright = true,
  smartindent = true,
  termguicolors = true,
  relativenumber = true,
  tabstop = 4,
  cmdheight = 1,
  laststatus = 0,
  showtabline = 0,
  softtabstop = 4,
  shiftwidth = 4,
  scrolloff = 9,
  sidescrolloff = 9,
  updatetime = 100,
  timeoutlen = 500,
  ttimeoutlen = 10,
  redrawtime = 1500,
  mouse = '',
  signcolumn = 'yes',
  fillchars = {eob=' '},
  cursorlineopt = 'number',
  wildmode = 'longest:full,full',
  completeopt = 'menu,menuone,noselect',
  undodir = os.getenv('HOME') .. '/.cache/undodir',
  sessionoptions = {'buffers','curdir','tabpages','winsize'},
}

for k, v in pairs(mod) do vim.g[k] = v end
for k, v in pairs(options) do vim.opt[k] = v end

vim.opt.isfname:append('@-@')
vim.opt.shortmess:append('scIW')
