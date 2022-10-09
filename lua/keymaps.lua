local home = os.getenv("HOME")
-- nvim tree
vim.api.nvim_set_keymap("n", "<c-t>", ":NvimTreeToggle<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<c-f>", ":NvimTreeFocus<cr>", { noremap = true, silent = true })

--Find files using Telescope command-line sugar.
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>lg", ":Telescope live_grep<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gs", ":Telescope grep_string<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope buffers<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fh", ":Telescope help_tags<cr>", { noremap = true, silent = true })

--formatting
vim.api.nvim_set_keymap("n", "<space>fm", ":lua vim.lsp.buf.format({ async = true })<cr>", { noremap = true, silent = true })

-- new file
vim.api.nvim_set_keymap("n", "<leader>n", ":enew<cr>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>fd", ":edit " .. home .. "/.config<cr>", { noremap = true, silent = true })

--jump or expand snippets
vim.cmd("imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' ")
