--LSP installer plugin
local loaded_lsp_installer, lsp_installer = pcall(require, "nvim-lsp-installer")
if not loaded_lsp_installer then
	return
end

lsp_installer.setup({
	automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
	ui = {
		border = "rounded",
		icons = {
			server_installed = "✓",
			server_pending = "➜",
			server_uninstalled = "✗",
		},
	},
})

--some examples of symbols
--⚠
--✖
--
--ⓘ
--●
--
--
---- symbols to LSP dignostic
local loaded_config, lspconfig = pcall(require, "lspconfig")
if not loaded_config then
	return
end
-- symbols to LSP dignostic
local signs = { Error = "ⓧ ", Warn = "⚠ ", Hint = " ", Info = "🛈 " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local loaded_cmp_lsp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if not loaded_cmp_lsp then
	return
end

local capabilities = cmp_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())

--setting up all LSP needed

lspconfig.sumneko_lua.setup({
	capabilities = capabilities,
	-- to set null-ls as default formatter
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,

	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})
lspconfig.pyright.setup({
	capabilities = capabilities,
	-- to set null-ls as default formatter
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
})

lspconfig.intelephense.setup({
	capabilities = capabilities,

	-- to set null-ls as default formatter
	--on_attach = function(client)
	--	client.server_capabilities.documentFormattingProvider = false
	--end,
})
lspconfig.dockerls.setup({ capabilities = capabilities })
lspconfig.bashls.setup({
	capabilities = capabilities,
	-- to set null-ls as default formatter
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
})
lspconfig.tsserver.setup({
	capabilities = capabilities,
	-- to set null-ls as default formatter
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
})
--lspconfig.stylelint_lsp.setup {capabilities = capabilities }
lspconfig.html.setup({
	capabilities = capabilities,
	-- to set null-ls as default formatter
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
})
lspconfig.cmake.setup({ capabilities = capabilities })
lspconfig.lemminx.setup({ capabilities = capabilities })
lspconfig.vuels.setup({
	capabilities = capabilities,
	-- to set null-ls as default formatter
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
})
lspconfig.dockerls.setup({
	capabilities = capabilities,
	-- to set null-ls as default formatter
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
})
