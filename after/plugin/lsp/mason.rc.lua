--LSP installer plugin
local loaded_mason, mason = pcall(require, "mason")

if not loaded_mason then
	return
end

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})
