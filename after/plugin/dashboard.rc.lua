local loaded, db = pcall(require, "dashboard")
if not loaded then
	return
end
db.disable_statusline = 1
db.default_executive = "telescope"
db.custom_header = {
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
}
db.custom_footer = { "github.com/lugabrielbueno" }

local home = os.getenv("HOME")
-- macos
--db.preview_command = "cat | lolcat -F 0.3"
-- linux
--db.preview_command = "ueberzug"
--
--db.preview_file_path = home .. "/.config/nvim/static/neovim.cat"
db.preview_file_height = 12
db.preview_file_width = 80
db.custom_center = {

	{
		icon = "📄  ",
		desc = "New File                                ",
		action = "enew",
		shortcut = "<leader> n  ",
	},
	{
		icon = "📁  ",
		desc = "Find  File                              ",
		action = "Telescope find_files find_command=rg,--hidden,--files",
		shortcut = "<leader> f f",
	},

	{
		icon = "🔎  ",
		desc = "Find  word                              ",
		action = "Telescope live_grep",
		shortcut = "<leader> l g",
	},
	{
		icon = "🌳  ",
		desc = "Nvim Tree                               ",
		action = "NvimTreeOpen",
		shortcut = "<ctrl> t    ",
	},
	{
		icon = "🕘  ",
		desc = "Recently latest session                 ",
		shortcut = "<leader> s l",
		action = "SessionLoad",
	},
	{
		icon = "  🛠️  ",
		desc = "Open .config files                     ",
		action = "edit " .. home .. "/.config",
		shortcut = " <leader> f d ",
	},
}
--      
