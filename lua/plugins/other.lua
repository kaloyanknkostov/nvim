vim.pack.add({
	{ src = "https://github.com/rcarriga/nvim-notify" },
	{ src = "https://github.com/windwp/nvim-autopairs" },
})
local notify = require("notify")
vim.notify = notify
notify.setup({
	stages = "fade_in_slide_out",
	timeout = 3000,
	background_colour = "#000000",
})
require("nvim-autopairs").setup({})
