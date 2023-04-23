local keymap = vim.api.nvim_set_keymap
-- If there is no definition, it will instead be hidden
-- When you use an action in finder like "open vsplit",
-- you can use <C-t> to jump back
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { noremap = true, silent = true })
-- Rename all occurrences of the hovered word for the entire file
keymap("n", "gr", "<cmd>Lspsaga rename<CR>", { noremap = true, silent = true })
-- Rename all occurrences of the hovered word for the selected files
keymap("n", "gr", "<cmd>Lspsaga rename ++project<CR>", { noremap = true, silent = true })
-- Use <C-t> to jump back
keymap("n", "gp", "<cmd>Lspsaga peek_definition<CR>", { noremap = true, silent = true })
-- Go to definition
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { noremap = true, silent = true })
-- code actions
keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { noremap = true, silent = true })
-- Peek type definition
-- You can edit the file containing the type definition in the floating window
-- It also supports open/vsplit/etc operations, do refer to "definition_action_keys"
-- It also supports tagstack
-- Use <C-t> to jump back
keymap("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>", { noremap = true, silent = true })
-- Go to type definition
keymap("n", "gt", "<cmd>Lspsaga goto_type_definition<CR>", { noremap = true, silent = true })
-- Show line diagnostics
-- You can pass argument ++unfocus to
-- unfocus the show_line_diagnostics floating window
keymap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>", { noremap = true, silent = true })
-- Show buffer diagnostics
keymap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>", { noremap = true, silent = true })
-- Show workspace diagnostics
keymap("n", "<leader>sw", "<cmd>Lspsaga show_workspace_diagnostics<CR>", { noremap = true, silent = true })
-- Show cursor diagnostics
keymap("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { noremap = true, silent = true })
-- Diagnostic jump
-- You can use <C-o> to jump back to your previous location
keymap("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { noremap = true, silent = true })
keymap("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", { noremap = true, silent = true })

-- Toggle outline
keymap("n", "<leader>o", "<cmd>Lspsaga outline<CR>", { noremap = true, silent = true })
-- Hover Doc
-- If there is no hover doc,
-- there will be a notification stating that
-- there is no information available.
-- To disable it just use ":Lspsaga hover_doc ++quiet"
-- Pressing the key twice will enter the hover window
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { noremap = true, silent = true })
-- If you want to keep the hover window in the top right hand corner,
-- you can pass the ++keep argument
-- Note that if you use hover with ++keep, pressing this key again will
-- close the hover window. If you want to jump to the hover window
-- you should use the wincmd command "<C-w>w"
keymap("n", "<C-K>", "<cmd>Lspsaga hover_doc ++keep<CR>", { noremap = true, silent = true })
-- Call hierarchy
keymap("n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>", { noremap = true, silent = true })
keymap("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>", { noremap = true, silent = true })
-- Floating terminal
keymap("n", "<A-d>", "<cmd>Lspsaga term_toggle<CR>", { noremap = true, silent = true })
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
-- new file
keymap("n", "<leader>n", ":enew<cr>", { noremap = true, silent = true })
-- navigate between .config files
keymap("n", "<leader>fd", ":edit ~/.config<cr>", { noremap = true, silent = true })
-- vertical and horizontal splits
keymap("n", "<leader>vs", ":vsplit<cr>", { noremap = true, silent = true })
keymap("n", "<leader>hs", ":split<cr>", { noremap = true, silent = true })
--jump or expand snippets
vim.cmd("imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' ")
