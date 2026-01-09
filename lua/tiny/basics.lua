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
		whichwrap = vim.o.whichwrap .. "<>[]hl",
		diagnostics_text = true,
	}
	-- add sum stuff here
}

function M.setup(opts)
	if opts then
		config = vim.tbl_deep_extend("force", config, opts)
	end

	if config.enabled then
		vim.o.tabstop = config.options.tabstop
		vim.o.shiftwidth = config.options.shiftwidth
		vim.o.nu = config.options.nu
		vim.o.relativenumber = config.options.relativenumber
		vim.o.clipboard = config.options.clipboard
		vim.o.inccommand = config.options.inccommand
		vim.o.laststatus = config.options.laststatus
		vim.o.wrap = config.options.wrap
		vim.o.undofile = config.options.undofile
		vim.o.whichwrap = config.options.whichwrap
	end
end

vim.diagnostic.config({ virtual_text = config.options.diagnostics_text })


return M
