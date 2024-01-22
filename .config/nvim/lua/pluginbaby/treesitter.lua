require'nvim-treesitter.configs'.setup {
  ensure_installed =  "all",
  sync_install = false,
  auto_install = true,
  ignore_install = {
  --lang
  },
  highlight = {
    enable = true,
    disable = {
    --lang
  },
},
  highlight = {
    enable = true,
  },
}
