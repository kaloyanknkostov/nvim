vim.pack.add({
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/meuter/lualine-so-fancy.nvim" },
})

require("lualine").setup({
	options = {
		theme = "auto",
		component_separators = { left = "│", right = "│" },
		section_separators = { left = "", right = "" },
		globalstatus = true,
		refresh = {
			statusline = 100,
		},
	},
	sections = {
		lualine_a = {},
		lualine_b = {
			{ "fancy_branch" },
		},
		lualine_c = {
			{
				"filename",
				path = 0,
			},
		},
		lualine_x = {
			"fancy_lsp_sever",
			"fancy_diff",
			"progress",
		},
		lualine_y = {},
		lualine_z = {},
	},
})
