local keymap = vim.api.nvim_set_keymap
-- lsp diagnostics
keymap("n", "<space>e", ":lua vim.diagnostic.open_float()<cr>", { silent = true, noremap = true })
keymap("n", "<C-k>", ":lua vim.diagnostic.goto_prev()<cr>", { silent = true, noremap = true })
keymap("n", "<C-j>", ":lua vim.diagnostic.goto_next()<cr>", { silent = true, noremap = true })
keymap("n", "<space>q", ":lua vim.diagnostic.setloclist()<cr>", { silent = true, noremap = true })
-- lsp helpers
keymap("n", "gD", ":lua vim.lsp.buf.declaration()<cr>", { silent = true, noremap = true })
keymap("n", "gd", ":lua vim.lsp.buf.definition()<cr>", { silent = true, noremap = true })
keymap("n", "K", ":lua vim.lsp.buf.hover()<cr>", { silent = true, noremap = true })
keymap("n", "gi", ":lua vim.lsp.buf.implementation()<cr>", { silent = true, noremap = true })
keymap("n", "<C-k>", ":lua vim.lsp.buf.signature_help()<cr>", { silent = true, noremap = true })
keymap("n", "<space>wa", ":lua vim.lsp.buf.add_workspace_folder()<cr>", { silent = true, noremap = true })
keymap("n", "<space>wr", ":lua vim.lsp.buf.remove_workspace_folder()<cr>", { silent = true, noremap = true })
keymap("n", "<space>D", ":lua vim.lsp.buf.type_definition()<cr>", { silent = true, noremap = true })
keymap("n", "<space>rn", ":lua vim.lsp.buf.rename()<cr>", { silent = true, noremap = true })
keymap("n", "<space>ca", ":lua vim.lsp.buf.code_action()<cr>", { silent = true, noremap = true })
--formatting
keymap("n", "<space>fm", ":lua vim.lsp.buf.format({ async = true })<cr>", { noremap = true, silent = true })
--keymap("n", "gr", ":lua vim.lsp.buf.references()<cr>", { silent = true, noremap = true })

keymap("n", "<space>gs", ":lua require('functions').generateGettersAndSetters()<cr>", { noremap = true, silent = true })

-- trouble
keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
keymap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
keymap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
keymap("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
keymap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
keymap("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })

-- nvim tree
keymap("n", "<c-t>", ":NvimTreeToggle<cr>", { noremap = true, silent = true })
keymap("n", "<c-f>", ":NvimTreeFocus<cr>", { noremap = true, silent = true })
--Find files using Telescope command-line sugar.
keymap("n", "<leader><space>", ":Telescope find_files<cr>", { noremap = true, silent = true })
keymap("n", "<leader>/", ":Telescope live_grep<cr>", { noremap = true, silent = true })
keymap("n", "<leader>fb", ":Telescope buffers<cr>", { noremap = true, silent = true })
keymap("n", "<leader>fh", ":Telescope help_tags<cr>", { noremap = true, silent = true })

-- new file
keymap("n", "<leader>n", ":enew<cr>", { noremap = true, silent = true })
-- navigate between .config files
keymap("n", "<leader>fd", ":edit ~/.config<cr>", { noremap = true, silent = true })
-- vertical and horizontal splits
keymap("n", "ss", ":split<cr>", { noremap = true, silent = true })
keymap("n", "vs", ":vsplit<cr>", { noremap = true, silent = true })
--jump or expand snippets
vim.cmd("imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' ")
