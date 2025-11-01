------Vim--------------------------------------
require("remap")
require("options")
------Core Plugins-----------------------------
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.lsp")
------Functionality Plugins--------------------
require("plugins.oil")
require("plugins.harpoon")
require("plugins.gitsigns")
require("plugins.other")
require("plugins.formater")
require("plugins.hard")
------Aesthetics Plugins-----------------------
require("plugins.gruvbox")
require("plugins.vague")
require("my-statusline").setup()
-----------------------------------------------
vim.cmd("colorscheme vague")
