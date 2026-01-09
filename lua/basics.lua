--[[
the smallest config preset plugin in the universe
--]]

local M = {}

local config = {
	enabled = true,
	options = {
		tabstop = 2,
		shiftwidth = 2,
		nu = true,
		relativenumber = true,
		clipboard = "unnamedplus",
		inccommand = "split",
		laststatus = 3,
		wrap = false,
		undofile = true,
		whichwrap = vim.o.whichwrap .. "<>[]hl"
	}
	-- add sum stuff here
}


vim.o.tabstop = config.options.tabstop
vim.o.shiftwidth = config.options.shiftwidth
vim.o.nu = config.options.nu
vim.o.relativenumber = config.options.relativenumber
vim.o.clipboard = config.options.clipboard
vim.o.inccommand = config.options.inccommand
vim.o.laststatus = config.options.laststatus
vim.o.wrap = config.options.wrap
vim.o.undofile = config.options.undofile
vim.o.whichwrap = config.options.undofile

return M
