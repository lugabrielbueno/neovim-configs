local home = os.getenv("HOME")

local keymap = vim.api.nvim_set_keymap

-- nvim tree
keymap("n", "<c-t>", ":NvimTreeToggle<cr>", { noremap = true, silent = true })
keymap("n", "<c-f>", ":NvimTreeFocus<cr>", { noremap = true, silent = true })

--Find files using Telescope command-line sugar.
keymap("n", "<leader>ff", ":Telescope find_files<cr>", { noremap = true, silent = true })
keymap("n", "<leader>lg", ":Telescope live_grep<cr>", { noremap = true, silent = true })
keymap("n", "<leader>gs", ":Telescope grep_string<cr>", { noremap = true, silent = true })
keymap("n", "<leader>fb", ":Telescope buffers<cr>", { noremap = true, silent = true })
keymap("n", "<leader>fh", ":Telescope help_tags<cr>", { noremap = true, silent = true })

--formatting
vim.api.nvim_set_keymap(
	"n",
	"<space>fm",
	":lua vim.lsp.buf.format({ async = true })<cr> :w<cr>",
	{ noremap = true, silent = true }
)

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<leader>sl", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>sb", vim.diagnostic.setloclist)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
		vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
		vim.keymap.set("n", "<leader>wl", function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
	end,
})
-- new file
keymap("n", "<leader>n", ":enew<cr>", { noremap = true, silent = true })

-- navigate between .config files
keymap("n", "<leader>fd", ":edit " .. home .. "/.config<cr>", { noremap = true, silent = true })

-- vertical and horizontal splits
keymap("n", "<leader>vs", ":vsplit<cr>", { noremap = true, silent = true })
keymap("n", "<leader>hs", ":split<cr>", { noremap = true, silent = true })

-- quit window
keymap("n", "<leader>q", ":q<cr>", { noremap = true, silent = true })

-- write document
keymap("n", "<leader>w", ":w<cr>", { noremap = true, silent = true })

-- write and quit
keymap("n", "<leader>wq", ":wq<cr>", { noremap = true, silent = true })

--jump or expand snippets
vim.cmd("imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' ")
