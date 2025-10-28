vim.pack.add({"https://github.com/ellisonleao/gruvbox.nvim"})
require("gruvbox").setup({
			-- Equivalent to Kanagawa's transparent = true
			transparent_mode = true, -- Fixed the typo here

			-- Equivalent to Kanagawa's styles for comments and keywords
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
				LineNr = { bg = "none" }, -- Make LineNr background transparent
			},

		})
vim.cmd.colorscheme "gruvbox"
