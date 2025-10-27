vim.g.mapleader = ' '
require 'kaloyan.remap'
require 'kaloyan.options'
require 'kaloyan.commands'
vim.g.base46_cache = vim.fn.stdpath 'data' .. '/base46_cache/'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
	vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)
require('lazy').setup({
	{ import = 'kaloyan.plugins' },
}, {})
for _, v in ipairs(vim.fn.readdir(vim.g.base46_cache)) do
	dofile(vim.g.base46_cache .. v)
end
vim.cmd.colorscheme "gruvbox"
