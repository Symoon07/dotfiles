local git_blame = require('gitblame')
vim.g.gitblame_display_virtual_text = 0

require('lualine').setup {
  options = {
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    theme = 'onedark',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics', 'filename'},
    lualine_c = { { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available } },
    lualine_x = {},
    lualine_y = {'encoding', 'filetype'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
}
