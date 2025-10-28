------Vim--------------------------------------
require("remap")
require("options")
require("commands")
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
------Aesthetics Plugins-----------------------
require("plugins.gruvbox")
-- require("plugins.lualine")
require("my-statusline").setup()
-----------------------------------------------
