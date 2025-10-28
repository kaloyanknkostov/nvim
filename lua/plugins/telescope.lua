vim.pack.add({
	{ src = "https://github.com/nvim-telescope/telescope.nvim", version = vim.version.range("0.1.x") },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-ui-select.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim" },
})
require("telescope").setup({
	extensions = {
		["ui-select"] = require("telescope.themes").get_dropdown(),
	},
	pickers = {
		find_files = {
			previewer = false,
		},
	},
})
pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "ui-select")
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", builtin.find_files)
vim.keymap.set("n", "<leader>sd", builtin.diagnostics)
vim.keymap.set("n", "<leader>sw", builtin.current_buffer_fuzzy_find)
