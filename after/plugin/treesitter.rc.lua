local loaded,treesitter = pcall(require,'nvim-treesitter.configs')
if not loaded then
	return
end

treesitter.setup({
	ensure_installed = "all",
	autotag = { enable = true },
	highlight = { enable = true },
	indent = { enable = true },
})
--require "nvim-treesitter.parsers".get_parser_configs().markdown = nil
