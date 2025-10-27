vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '-', vim.cmd.Ex, { desc = 'back' })
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<A-d>', '<C-d>zz')
vim.keymap.set('n', '<A-u>', '<C-u>zz')

vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
-- Keyboard users
vim.keymap.set('n', '<C-t>', function()
	require('menu').open 'default'
end, {})


--Lsp
------------------------------------------------
local on_attach = function(client, bufnr)
	local opts = { buffer = bufnr }

	-- Basic LSP Keymaps (Uncomment to enable)
	-- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
	-- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
	-- vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
	-- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
	-- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

	-- Formatting (Uncomment to enable)
	-- vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, opts)

	-- Workspace management (Uncomment to enable)
	-- vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
	-- vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
end

-- Create the LspAttach Autocmd
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspKeymaps', { clear = true }),
	callback = function(ev)
		-- Call the keymap function to set keymaps for the newly attached buffer
		on_attach(vim.lsp.get_client_by_id(ev.data.client_id), ev.buf)
	end,
})
