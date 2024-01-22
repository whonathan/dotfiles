require('telescope').setup{
  defaults = require('telescope.themes').get_dropdown{
    preview = false,
  --
  },
  pickers = {
  --
  },
  extensions = {
  --
  },
}

--require('telescope').setup({
--  defaults = vim.tbl_extend(
--  "force",
--  require('telescope.themes').get_dropdown(),
--  {
--    path_display = {},
--    mappings = {},
--  }),
--  pickers = {},
--  extensions = {},
--})
