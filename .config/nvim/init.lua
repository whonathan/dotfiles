if vim.g.vscode then
  require('vscode')
else
  require('options')
  require('keymaps')
  require('plughere')
  require('pluginbaby.colorscheme')
  require('pluginbaby.treesitter')
  require('pluginbaby.explorer')
  require('pluginbaby.fuzyfinder')
  --require('pluginbaby.lsp')
end
