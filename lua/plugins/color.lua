vim.pack.add({
	{ src = "https://github.com/vague-theme/vague.nvim" },
	{ src = "https://github.com/ellisonleao/gruvbox.nvim" },
	{ src = "https://github.com/sainnhe/gruvbox-material" },
})

vim.pack.add({ "https://github.com/ellisonleao/gruvbox.nvim" })
require("gruvbox").setup({
	transparent_mode = false, -- Fixed the typo here
	italic = {
		strings = false, -- You can adjust these as needed
		emphasis = true,
		comments = true,
		operators = false,
		statements = false, -- Set statements=true if you want italic conditionals like Catppuccin
		keywords = true, -- Set italic keywords
	},
	terminal_colors = true,
	overrides = {
		LineNr = { fg = "#f2e5bc" },
	},
})
require("vague").setup({
	transparent = false,
})

vim.g.gruvbox_material_transparent_background = 0
vim.g.gruvbox_material_foreground = "mix"
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_ui_contrast = "high"
vim.g.gruvbox_material_float_style = "bright"
vim.g.gruvbox_material_statusline_style = "mix" -- Options: "original", "material", "mix", "afterglow"
vim.g.gruvbox_material_cursor = "auto"
vim.cmd.colorscheme("gruvbox-material")
