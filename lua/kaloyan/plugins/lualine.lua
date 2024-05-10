return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'meuter/lualine-so-fancy.nvim',
  },

  opts = {
    options = {
      theme = 'seoul256',
      component_separators = { left = '│', right = '│' },
      section_separators = { left = '', right = '' },
      globalstatus = true,
      refresh = {
        statusline = 100,
      },
    },
    sections = {
      lualine_a = {},
      lualine_b = {
        { 'fancy_branch' },
      },
      lualine_c = {
        {
          'filename',
          path = 1,
        },
      },
      lualine_x = {
        'fancy_lsp_sever',
        'fancy_diff',
        'progress',
      },
      lualine_y = {},
      lualine_z = {},
    },
  },
}
