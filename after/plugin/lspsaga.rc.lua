local loaded, lspsaga = pcall(require, "lspsaga")
if not loaded then
	return
end
lspsaga.setup({
	preview = {
		lines_above = 0,
		lines_below = 12,
	},
	scroll_preview = {
		scroll_down = "<C-f>",
		scroll_up = "<C-b>",
	},
	request_timeout = 2000,

	-- See Customizing Lspsaga's Appearance
	ui = { ... },

	-- For default options for each command, see below
	finder = { ... },
	code_action = { ... },
	-- etc.
})
