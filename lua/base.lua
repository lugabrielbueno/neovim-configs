local vim = vim
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smarttab = true
vim.opt.textwidth = 150
vim.opt.encoding = "UTF-8"
vim.opt.syntax = "enable"
vim.opt.termguicolors = true
vim.opt.relativenumber = false
vim.opt.cursorline = true
vim.opt.shell = "zsh"
vim.opt.mouse = {}
vim.opt.winblend = 0
vim.opt.wildoptions = "pum"
--vim.opt.pumblend = 15
vim.wo.wrap = false
vim.opt.hidden = false
vim.opt.background = "dark"

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = false,
	float = {
		header = { "  Diagnostics", "HeaderDiagnosticOpenFloat" },
		prefix = "",
		border = "rounded",
		source = "always",
	},
})

local colorscheme = "onenord"
local loaded_colorscheme, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not loaded_colorscheme then
	vim.notify("colorscheme " .. colorscheme .. " not found")
	return
end
return { current_colorscheme = colorscheme }
