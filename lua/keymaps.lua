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

-- LspSaga
-- Lsp finder find the symbol definition implement reference
-- if there is no implement it will hide
-- when you use action in finder like open vsplit then you can
-- use <C-t> to jump back
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { noremap = true, silent = true })

-- Code action
vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { noremap = true, silent = true })

-- Rename
keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { noremap = true, silent = true })

-- Rename word in whole project
keymap("n", "<leader>rr", "<cmd>Lspsaga rename ++project<CR>", { noremap = true, silent = true })

-- Peek Definition
-- you can edit the definition file in this float window
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
keymap("n", "<C-g>", "<cmd>Lspsaga peek_definition<CR>", { noremap = true, silent = true })

-- Go to Definition
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { noremap = true, silent = true })

-- Show line diagnostics you can pass argument ++unfocus to make
-- show_line_diagnostics float window unfocus
keymap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>", { noremap = true, silent = true })

-- Show cursor diagnostic
-- also like show_line_diagnostics  support pass ++unfocus
keymap("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { noremap = true, silent = true })

-- Show buffer diagnostic
keymap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>", { noremap = true, silent = true })

-- Diagnostic jump can use `<c-o>` to jump back
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { noremap = true, silent = true })
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { noremap = true, silent = true })

-- Toggle Outline
keymap("n", "<leader>o", "<cmd>Lspsaga outline<CR>", { noremap = true, silent = true })

-- Hover Doc
-- if there has no hover will have a notify no information available
-- to disable it just Lspsaga hover_doc ++quiet
-- press twice it will jump into hover window
--keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { noremap = true, silent = true })
-- if you want keep hover window in right top you can use ++keep arg
-- notice if you use hover with ++keep you press this keymap it will
-- close the hover window .if you want jump to hover window must use
-- wincmd command <C-w>w
keymap("n", "K", "<cmd>Lspsaga hover_doc ++keep<CR>", { noremap = true, silent = true })

-- Callhierarchy
keymap("n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>", { noremap = true, silent = true })
keymap("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>", { noremap = true, silent = true })

-- Float terminal
vim.keymap.set({ "n", "t" }, "<A-d>", "<cmd>Lspsaga term_toggle<CR>", { noremap = true, silent = true })

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
