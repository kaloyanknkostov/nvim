vim.pack.add({
	{ src = "https://github.com/folke/fzf-lua" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})
require("fzf-lua").setup({

	fzf_colors = true,
	defaults = {
		formatter = "path.dirname_first",
	},
	winopts = {
		height = 0.60,
		width = 0.40,
		border = "rounded",
		preview = {
			border = "rounded", -- preview border: accepts both `nvim_open_win`
			hidden = false,
			layout = "vertical",
		},
	},
})
vim.keymap.set("n", "<leader>sf", function()
	require("fzf-lua").files()
end, { desc = "Fzf Files" })
vim.keymap.set("n", "<leader>sd", function()
	require("fzf-lua").diagnostics_document()
end, { desc = "Fzf diagnostics" })
vim.keymap.set("n", "<leader>sw", function()
	require("fzf-lua").lgrep_curbuf()
end, { desc = "fzf search word" })
vim.keymap.set("n", "<leader>th", function()
	require("fzf-lua").colorschemes()
end, { desc = "Fzf Colorschemes" })
