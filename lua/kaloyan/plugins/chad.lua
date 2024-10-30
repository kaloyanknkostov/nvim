return {
  'nvim-lua/plenary.nvim',
  {
    'nvchad/ui',
    config = function()
      require 'nvchad'
    end,
  },

  {
    'nvchad/base46',
    lazy = true,
    build = function()
      require('base46').load_all_highlights()
    end,
  },

  'nvchad/volt', -- optional, needed for theme switcher
  -- or just use Telescope themes
  {
    'utilyre/barbecue.nvim',
    name = 'barbecue',
    version = '*',
    dependencies = {
      'SmiteshP/nvim-navic',
      'nvim-tree/nvim-web-devicons', -- optional dependency

      'nvchad/base46',
    },
    opts = {},
  },
}
