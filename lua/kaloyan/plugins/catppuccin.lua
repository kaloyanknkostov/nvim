return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha', -- latte, frappe, macchiato, mocha
      transparent_background = true, -- disables setting the background color.
      term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { 'italic' }, -- Change the style of comments
        conditionals = { 'italic' },
      },
      default_integrations = true,
      highlight_overrides = {
        mocha = function(mocha)
          return {
            LineNr = { fg = mocha.text },
          }
        end,
      },
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
