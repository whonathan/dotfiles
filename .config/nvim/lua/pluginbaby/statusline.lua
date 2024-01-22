require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
tabline = {
  lualine_a = {'branch', 'diff', 'diagnostics'},
  lualine_b = {
    {
      'buffers',
      symbols = {
        alternate_file = '', -- Text to show to identify the alternate file
      },
      filetype_names = {
        NvimTree = 'Explorer',
      },
    },
  },
  lualine_c = {},
  lualine_x = {},
  lualine_y = {},
  lualine_z = {}
},
  sections = {},
  inactive_sections = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {'nvim-tree'}
}
