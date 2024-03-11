local loaded, treesitter = pcall(require, "nvim-treesitter.configs")
if not loaded then
	return
end

treesitter.setup({
	ensure_installed = {
		"python",
		"php",
		"javascript",
		"typescript",
		"ruby",
		"go",
		"elixir",
		"kotlin",
		"typescript",
		"json",
		"markdown",
	},
	autotag = { enable = true },
	highlight = { enable = true },
	indent = { enable = true },
})
--require "nvim-treesitter.parsers".get_parser_configs().markdown = nil
