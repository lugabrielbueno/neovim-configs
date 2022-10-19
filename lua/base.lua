local vim = vim
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.softtabstop = 2
vim.opt.encoding = "UTF-8"
vim.opt.syntax = "enable"
vim.opt.termguicolors = true
vim.opt.relativenumber = false
vim.opt.cursorline = true
vim.opt.shell = "zsh"
vim.opt.mouse = {}
vim.opt.winblend = 0
vim.opt.wildoptions = "pum"
vim.opt.pumblend = 25
vim.wo.wrap = false
--vim.opt.background = 'dark'
--
--
-- Hold the cursor for diagnostic
vim.cmd("autocmd CursorHold * lua vim.diagnostic.open_float()")
vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = false,
	float = {
		header = " Diagnostic ",
		prefix = "",
		border = "rounded",
		source = "always",
	},
})
vim.g.tmuxline_theme = "vim_statusline_3"
vim.g.cursorhold_updatetime = "100"
local colorscheme = "everforest"
local loaded_colorscheme, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not loaded_colorscheme then
	vim.notify("colorscheme " .. colorscheme .. " not found")
	return
end
vim.g.colorscheme = "everforest"
--vim.cmd('colorscheme everforest')
--vim.cmd('colorscheme nordfox')
--vim.cmd('colorscheme tender')
--vim.cmd('colorscheme nord')
