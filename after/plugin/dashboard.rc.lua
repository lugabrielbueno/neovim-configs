local loaded, dashboard = pcall(require, "dashboard")
if not loaded then
	return
end

dashboard.setup({
	-- config
	theme = "doom", --  theme is doom and hyper default is hyper
	config = {
		header = {
			"                                                       ",
			"                                                       ",
			"                                                       ",
			"                                                       ",
			"                                                       ",
			"                                                       ",
			" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
			" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
			" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
			" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
			" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
			" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
			"                                                       ",
			"                                                       ",
			"                                                       ",
			"                                                       ",
			"                                                       ",
		}, --your header
		center = {

			{
				icon = "  ",
				icon_hl = "Title",
				desc = "New File             ",
				desc_hl = "String",
				key = "n",
				keymap = "   <leader> n   ",
				action = "enew",
			},
			{
				icon = "  ",
				icon_hl = "Title",
				desc = "Find Files           ",
				desc_hl = "String",
				key = "f",
				keymap = "   <leader> ff  ",
				action = ":Telescope find_files",
			},
			{
				icon = "  ",
				icon_hl = "Title",
				desc = "Find String          ",
				desc_hl = "String",
				key = "s",
				keymap = "   <leader> lg  ",
				action = ":Telescope live_grep",
			},
			{
				icon = "  ",
				icon_hl = "Title",
				desc = "Nvim Tree            ",
				desc_hl = "String",
				key = "t",
				keymap = "   <ctrl> t     ",
				action = ":NvimTreeToggle",
			},
			{
				icon = "  ",
				icon_hl = "Title",
				desc = "Find Dotfiles         ",
				desc_hl = "String",
				key = "c",
				keymap = "   <leader> f d ",
				action = ":find ~/.config",
			},
			{
				icon = "  ",
				icon_hl = "Title",
				key = "q",
				desc = "Quit                 ",
				desc_hl = "String",
				keymap = "   <leader> q   ",
				action = ":q",
			},
		},
		footer = {
			"													",
			"													",
			"github.com/lugabrielbueno",
		}, --your footer
	},
})
