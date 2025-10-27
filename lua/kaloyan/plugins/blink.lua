-- File: lua/plugins/blink.lua (or where your plugin specs are defined)
return {
	'saghen/blink.cmp',
	dependencies = {
		'rafamadriz/friendly-snippets',

		-- LSP & Server Management Dependencies - These are now configured in a separate spec file.
		'neovim/nvim-lspconfig',
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
	},

	version = '1.*',

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = 'super-tab' },
		appearance = {
			nerd_font_variant = 'normal',
		},

		completion = { documentation = { auto_show = false } },
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},
		fuzzy = { implementation = 'prefer_rust_with_warning' },
	},
	opts_extend = { 'sources.default' },
}
