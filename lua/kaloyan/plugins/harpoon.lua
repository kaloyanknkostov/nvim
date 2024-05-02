return {

  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<C-a>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<C-s>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<C-d>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<C-f>', function()
      harpoon:list():select(4)
    end)
    vim.keymap.set('n', '<leader><C-h>', function()
      harpoon:list():replace_at(1)
    end)
    vim.keymap.set('n', '<leader><C-t>', function()
      harpoon:list():replace_at(2)
    end)
    vim.keymap.set('n', '<leader><C-n>', function()
      harpoon:list():replace_at(3)
    end)
    vim.keymap.set('n', '<leader><C-s>', function()
      harpoon:list():replace_at(4)
    end)
  end,
}
--[[

use("theprimeagen/harpoon")
 use {
			'nvim-treesitter/nvim-treesitter',
			run = function()
				local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
				ts_update()
			end,}
                        --]]
--[[
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-f>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-g>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-h>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-j>", function() ui.nav_file(4) end)
--]]
