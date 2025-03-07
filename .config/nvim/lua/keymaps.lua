local keymaps = {
  v = {
    ["<Space>"]   = "<Nop>",
    ["<leader>d"] = [["_d]],
    ["<leader>p"] = [["+p]],
    ["<leader>y"] = [["+y]],
    ["$"] = [[g_]]
  },
  x = {
    ["<Space>"]   = "<Nop>",
    ["<leader>/"] = '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>',
    ["<S-j>"] = ":m '>+1<cr>gv-gv",
    ["<S-k>"] = ":m '<-2<cr>gv-gv",
    ["<"] = "<gv",
    [">"] = ">gv",
  },
  n = {
    ["<Space>"]   = "<Nop>",
    ["<leader>q"] = ":q!<cr>",
    ["<leader>p"] = ":Lazy<cr>",
    ["<leader>p"] = [["+p]],
    ["<leader>e"] = ":lua explorer()<cr>",
    ["<leader>o"] = "o<esc>^Da",
    ["<leader>O"] = "O<esc>^Da",
    ["<leader>y"] = [["y]],
    ["<leader>Y"] = [["Y]],
    ["<leader>d"] = [["_d]],
    ["<leader>j"] = ":lprev<CR>zz",
    ["<leader>k"] = ":lnext<CR>zz",
    ["<leader>s"] = [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    ["<leader>/"] = "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>",
    ["<leader>ff"] = ":Telescope find_files<CR>",
    ["<leader>ft"] = ":Telescope live_grep<CR>",
    ["<leader>fp"] = ":Telescope zoxide list<CR>",
    ["<leader>fb"] = ":Telescope buffers<CR>",
    ["<leader>fe"] = ":Telescope file_browser<CR>",
    ["<leader>x"] = "<cmd>!chmod +x %<CR>",
    ["<leader><tab>"] = ":tabedit<cr>",
    ["<s-tab>"] = ":tabprev<cr>",
    ["<tab>"] = ":tabnext<cr>",
    ["<S-l>"] = ":bnext<CR>",
    ["<S-h>"] = ":bprevious<CR>",
    ["<S-q>"] = ":Bdelete!<CR>",
    ["<S-u>"] = "<C-r>",
    ["<C-a>"] = "gg<S-v>G",
    ["<C-s>"] = ":w<cr>",
    ["<C-m>"] = "<c-i>",
    ["<C-d>"] = "<c-d>zz",
    ["<C-u>"] = "<c-u>zz",
    ["<C-f>"] = ":silent !tmux neww tmux-sessionizer<cr>",
    ["<C-j>"] = ":cprev<CR>zz",
    ["<C-k>"] = ":cnext<CR>zz",
    ["<A-k>"] = "<c-w>+",
    ["<A-j>"] = "<c-w>-",
    ["<A-h>"] = "<c-w><",
    ["<A-l>"] = "<c-w>>",
    ["zh"] = "<c-w>h",
    ["zj"] = "<c-w>j",
    ["zk"] = "<c-w>k",
    ["zl"] = "<c-w>l",
    ["sd"] = ":split<cr>",
    ["sa"] = ":vsplit<cr>",
    ["so"] = ":so<cr>",
    ["n"] = "nzzzv",
    ["N"] = "nzzzv",
  },
}

-- Filetype-specific key mappings
local filetype_keymaps = {
  kotlin = {
    ["<leader>r"] = ":!kotlinc -script %<CR>",
  },
}

-- Set general keymaps
for mode, keys in pairs(keymaps) do
  for key, cmd in pairs(keys) do
    vim.api.nvim_set_keymap(mode, key, cmd, { noremap = true, silent = true })
  end
end

-- Set filetype-specific keymaps
vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    local ft = args.match
    if filetype_keymaps[ft] then
      for key, cmd in pairs(filetype_keymaps[ft]) do
        vim.api.nvim_set_keymap("n", key, cmd, { noremap = true, silent = true })
      end
    end
  end,
})

function explorer()
    vim.cmd('NvimTreeToggle')
    vim.cmd('setlocal relativenumber')
    vim.cmd('setlocal signcolumn=no')
end
