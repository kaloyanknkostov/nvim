return {
	'echasnovski/mini.nvim',
	config = function()
		require('mini.surround').setup()
		require('mini.git').setup()
		require('mini.diff').setup()
		require('mini.icons').setup()
		local statusline = require 'mini.statusline'
		statusline.setup {
			use_icons = vim.g.have_nerd_font,
			set_vim_settings = true,
			content = {
				active = function()
					local MiniStatusline = statusline
					local git = MiniStatusline.section_git({ trunc_width = 120 })
					local filename = '%t'
					local diagnostics = MiniStatusline.section_diagnostics({ trunc_width = 120 })
					local progress = '%p%%'
					return MiniStatusline.combine_groups({
						{ hl = 'MiniStatuslineDevinfo',  strings = { git } },
						'%<', -- Truncate components to the left if needed
						{ hl = 'MiniStatuslineFilename', strings = { filename } },
						'%=', -- Move to the right
						{ hl = 'MiniStatuslineDevinfo',  strings = { diagnostics } },
						{ hl = 'MiniStatuslineFileinfo', strings = { progress } },
					})
				end,
			},
		}
	end,
}
