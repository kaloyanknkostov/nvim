vim.pack.add({
	{ src = "https://github.com/rcarriga/nvim-notify" },
	{ src = "https://github.com/altermo/ultimate-autopair.nvim" },
})
local notify = require("notify")

vim.notify = notify

notify.setup({
	stages = "fade_in_slide_out",
	timeout = 3000,
	background_colour = "#000000",
})
