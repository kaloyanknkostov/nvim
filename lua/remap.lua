vim.g.mapleader = " "
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--Lsp------------------------------------------------
local on_attach = function(client, bufnr)
	local opts = { buffer = bufnr }
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
	-- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
	-- vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
	-- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
end
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspKeymaps", { clear = true }),
	callback = function(ev)
		-- Call the keymap function to set keymaps for the newly attached buffer
		on_attach(vim.lsp.get_client_by_id(ev.data.client_id), ev.buf)
	end,
})
--Pasiting--------------------------------------------------------------------------------------
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
vim.cmd("set cmdheight=0")
------------------------------------------------------------------------------------------------
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }) --oil
