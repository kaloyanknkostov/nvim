vim.pack.add({ "https://github.com/vimpostor/vim-tpipeline" })

--------------------------------------------------------------------------------
local M = {}
local sep = "  "

function M.get_git_branch_display()
	local head = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null")
	if vim.v.shell_error == 0 then
		local branch = vim.fn.trim(head)
		if branch == "HEAD" then
			local commit = vim.fn.system("git rev-parse --short HEAD 2>/dev/null | tr -d '\n'")
			if vim.v.shell_error == 0 then
				return " " .. commit .. sep --  is a Nerd Font icon
			end
			return " HEAD" .. sep
		end
		return " " .. branch .. sep
	end
	return ""
end

function M.get_lsp_display()
	local bufnr = vim.api.nvim_get_current_buf()
	local clients = vim.lsp.get_active_clients({ bufnr = bufnr })
	if #clients == 0 then
		return "" -- No active clients
	end
	local client_names = {}
	for _, client in ipairs(clients) do
		table.insert(client_names, client.name)
	end
	return " " .. table.concat(client_names, ", ") .. sep --  is a Nerd Font icon
end

function M.get_diff_display()
	local gitsigns_status = vim.b.gitsigns_status
	if gitsigns_status and gitsigns_status ~= "" then
		local status = gitsigns_status
		status = status:gsub("%+", " "):gsub("%-", " "):gsub("~", " ")
		return status .. sep -- ADDED trailing separator back
	end
	return ""
end

M.set_statusline_string = function()
	local components = {}
	table.insert(components, " ") -- Padding
	table.insert(components, "%{v:lua.MyStatusline.get_git_branch_display()}")
	table.insert(components, " %t%m%r")
	table.insert(components, "%=")
	table.insert(components, "%{v:lua.MyStatusline.get_lsp_display()}")
	table.insert(components, "%{v:lua.MyStatusline.get_diff_display()}")
	table.insert(components, " %p%% ")
	table.insert(components, " ") -- Added final padding space
	vim.o.statusline = table.concat(components, "")
end

-- Helper function to set/reset highlights
function M.set_transparent_hl()
	vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
	vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
end

M.setup = function()
	_G.MyStatusline = {
		get_git_branch_display = M.get_git_branch_display,
		get_lsp_display = M.get_lsp_display,
		get_diff_display = M.get_diff_display,
	}
	vim.o.laststatus = 3
	vim.o.showmode = false

	-- Call our highlight function once on initial setup
	M.set_transparent_hl()

	M.set_statusline_string()

	vim.api.nvim_create_augroup("MyStatuslineRefresh", { clear = true })

	vim.api.nvim_create_autocmd({ "LspAttach", "LspDetach" }, {
		group = "MyStatuslineRefresh",
		pattern = "*",
		command = "redrawstatus!", -- Force a redraw of the statusline
	})

	-- This new autocommand re-applies transparency when the colorscheme changes
	vim.api.nvim_create_autocmd("ColorScheme", {
		group = "MyStatuslineRefresh",
		pattern = "*",
		callback = M.set_transparent_hl, -- Call our helper function
	})
end

return M
