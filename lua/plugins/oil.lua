vim.pack.add({"https://github.com/stevearc/oil.nvim"})
vim.pack.add({"https://github.com/nvim-tree/nvim-web-devicons"})
require('oil').setup {
  columns = { 'icon' }, -- This requires nvim-web-devicons
  keymaps = {
    ['<C-h>'] = false,
    ['<M-h>'] = 'actions.select_split',
  },
  view_options = {
    show_hidden = true,
  },
  skip_confirm_for_simple_edits = true,
}

-- Set your keymap here
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
