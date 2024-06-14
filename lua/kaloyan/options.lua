vim.opt.relativenumber = true
vim.g.have_nerd_font = true
vim.opt.number = true
vim.opt.mouse = 'a' -- mouse support
vim.opt.showmode = false -- Don't show the mode, since it's already in the status line
--vim.opt.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim.
vim.opt.breakindent = true -- Enable break indent
vim.opt.undofile = true -- Save undo history
vim.opt.ignorecase = true -- Case-insensitive searching UNLESS \C or one or more capital letters
vim.opt.smartcase = true --in the search term
vim.opt.signcolumn = 'yes' -- Keep signcolumn on by default
vim.opt.updatetime = 250 -- Decrease update time

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300
-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
-- Set highlight on search, but clear on pressing <Esc> in normal mode

vim.opt.hlsearch = false
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.incsearch = true
vim.opt.isfname:append '@-@'
vim.opt.colorcolumn = '160'
vim.cmd 'set cmdheight=0'
