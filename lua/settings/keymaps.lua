local keymap = vim.api.nvim_set_keymap

local opts = { silent = true, noremap = true }

-- lsp diagnostics
keymap("n", "<space>e", ":lua vim.diagnostic.open_float()<cr>", opts)
keymap("n", "<C-k>", ":lua vim.diagnostic.goto_prev()<cr>", opts)
keymap("n", "<C-j>", ":lua vim.diagnostic.goto_next()<cr>", opts)
keymap("n", "<space>q", ":lua vim.diagnostic.setloclist()<cr>", opts)

-- lsp helpers
keymap("n", "gD", ":lua vim.lsp.buf.declaration()<cr>", opts)
keymap("n", "gd", ":lua vim.lsp.buf.definition()<cr>", opts)
keymap("n", "K", ":lua vim.lsp.buf.hover()<cr>", opts)
keymap("n", "gi", ":lua vim.lsp.buf.implementation()<cr>", opts)
keymap("n", "<C-k>", ":lua vim.lsp.buf.signature_help()<cr>", opts)
keymap("n", "<space>wa", ":lua vim.lsp.buf.add_workspace_folder()<cr>", opts)
keymap("n", "<space>wr", ":lua vim.lsp.buf.remove_workspace_folder()<cr>", opts)
keymap("n", "<space>D", ":lua vim.lsp.buf.type_definition()<cr>", opts)
keymap("n", "<space>rn", ":lua vim.lsp.buf.rename()<cr>", opts)
keymap("n", "<space>ca", ":lua vim.lsp.buf.code_action()<cr>", opts)
--formatting
keymap("n", "<space>fm", ":lua vim.lsp.buf.format({ async = true })<cr>", opts)
--keymap("n", "gr", ":lua vim.lsp.buf.references()<cr>", opts)

keymap("n", "<space>gs", ":lua require('functions').generateGettersAndSetters()<cr>", opts)

-- delete a word backwards
keymap("n", "dw", 'vb"_d', opts)

-- trouble
keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)
keymap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
keymap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
keymap("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", opts)
keymap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", opts)
keymap("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", opts)

-- nvim tree
keymap("n", "<c-t>", ":NvimTreeToggle<cr>", opts)
keymap("n", "<c-f>", ":NvimTreeFocus<cr>", opts)
--Find files using Telescope command-line sugar.
keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>lg", ":Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<cr>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<cr>", opts)

-- new file
keymap("n", "<leader>n", ":enew<cr>", opts)
-- navigate between .config files
keymap("n", "<leader>fd", ":edit ~/.config<cr>", opts)
-- vertical and horizontal splits
keymap("n", "ss", ":split<cr>", opts)
keymap("n", "vs", ":vsplit<cr>", opts)
--jump or expand snippets
vim.cmd("imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' ")
