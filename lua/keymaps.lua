local home = os.getenv("HOME")

local keymap = vim.api.nvim_set_keymap

-- nvim tree
keymap("n", "<c-t>", ":NvimTreeToggle<cr>", { noremap = true, silent = true })
keymap("n", "<c-f>", ":NvimTreeFocus<cr>", { noremap = true, silent = true })

--Find files using Telescope command-line sugar.
keymap("n", "<leader>ff", ":Telescope find_files<cr>", { noremap = true, silent = true })
keymap("n", "<leader>fs", ":Telescope live_grep<cr>", { noremap = true, silent = true })
keymap("n", "<leader>fb", ":Telescope buffers<cr>", { noremap = true, silent = true })
keymap("n", "<leader>fh", ":Telescope help_tags<cr>", { noremap = true, silent = true })

--formatting
vim.api.nvim_set_keymap(
	"n",
	"<space>fm",
	":lua vim.lsp.buf.format({ async = true })<cr>",
	{ noremap = true, silent = true }
)

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<leader>sl", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>sb", vim.diagnostic.setloclist)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)

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
