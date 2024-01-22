local mod = {
  mapleader = ' ',
  loaded_netrw = false,
  loaded_netrwPlugin = false,
  markdown_recommended_style = true,
}
local options = {
  wrap        = false,
  hlsearch    = false,
  showmode    = false,
  swapfile    = false,
  undofile    = true,
  expandtab   = true,
  smartindent = true,
  tabstop     = 4,
  shiftwidth  = 4,
  softtabstop = 4,
  cmdheight   = 0,
  laststatus  = 0,
  showtabline = 0,
  updatetime  = 100,
  timeoutlen  = 500,
  ttimeoutlen = 10,
  redrawtime  = 1500,
  mouse       = '',
  signcolumn  = 'no',
  fillchars   = {eob=' '},
  undodir     = os.getenv('HOME') .. '/.cache/undodir',
}

local keymaps = {
  v = {
    ["<Space>"]   = "<Nop>",
    ["<leader>d"] = [["_d]],
    ["<leader>p"] = [["+p]],
    ["<leader>y"] = [["+y]],
    ["$"]         = [[g_]],
    ["<S-k>"]     = "<cmd>lua require('vscode-neovim').call('editor.action.moveLinesUpAction')<CR>",
    ["<S-j>"]     = "<cmd>lua require('vscode-neovim').call('editor.action.moveLinesDownAction')<CR>",
  },
  x = {
    ["<Space>"]   = "<Nop>",
    ["<leader>/"] = '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>',
    ["<"] = "<gv",
    [">"] = ">gv",
  },
  n = {
    ["<Space>"]   = "<Nop>",
    ["<leader>q"] = ":q!<cr>",
    ["<leader>p"] = [["+p]],
    ["<leader>x"] = "<cmd>!chmod +x %<CR>",
    ["<S-u>"] = "<C-r>",
    ["<C-a>"] = "gg<S-v>G",
    ["<C-d>"] = "<c-d>zz",
    ["<C-u>"] = "<c-u>zz",
    ["<C-j>"] = ":cprev<CR>zz",
    ["<C-k>"] = ":cnext<CR>zz",
  },
}

for k, v in pairs(mod) do vim.g[k] = v end
for k, v in pairs(options) do vim.opt[k] = v end

for mode, keys in pairs(keymaps) do
  for key, cmd in pairs(keys) do
    vim.api.nvim_set_keymap(mode, key, cmd, { noremap = true, silent = true })
  end
end
