vim.pack.add({
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})
require("oil").setup({
	columns = { "icon" }, -- This requires nvim-web-devicons
	keymaps = {
		["<C-h>"] = false,
		["<M-h>"] = "actions.select_split",
	},
	view_options = {
		show_hidden = true,
	},
	skip_confirm_for_simple_edits = true,
})
