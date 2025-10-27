return {
	{
		'williamboman/mason.nvim',
		cmd = 'Mason',
		opts = {}, -- Keep an empty table for a minimal setup
	},
	{
		'williamboman/mason-lspconfig.nvim',
		dependencies = {
			'neovim/nvim-lspconfig',
			'saghen/blink.cmp', -- Ensure blink.cmp is a dependency to access its capabilities
		},
		config = function()
			-- Get LSP capabilities from blink.cmp
			local capabilities = require('blink.cmp').get_lsp_capabilities()

			require('mason-lspconfig').setup({
				-- List of LSPs to ensure are installed automatically
				ensure_installed = {
					'lua_ls',
					'jsonls',
					'html',
					'cssls',
					'tsserver', -- example JavaScript/TypeScript LSP
					-- Add all the language servers you want Mason to manage here
				},

				-- This handler configures the installed LSPs using nvim-lspconfig
				handlers = {
					-- The default handler applies to all installed servers
					function(server_name)
						require('lspconfig')[server_name].setup({
							capabilities = capabilities,
						})
					end,
				},
			})
		end,
	},
}
