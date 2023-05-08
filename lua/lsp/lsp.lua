--LSP installer plugin
local loaded_lsp_installer, lsp_installer = pcall(require, "nvim-lsp-installer")
local loaded_mason, mason = pcall(require, "mason")

if not loaded_lsp_installer or not loaded_mason then
	return
end

mason.setup()
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

---- symbols to LSP dignostic
local loaded_config, lspconfig = pcall(require, "lspconfig")
if not loaded_config then
	return
end
-- symbols to LSP dignostic
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local border = "rounded"

-- LSP settings (for overriding per client)
local handlers = {
	["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
	["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
}

local loaded_cmp_lsp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if not loaded_cmp_lsp then
	return
end

local capabilities = cmp_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

--setting up all LSP needed

lspconfig.lua_ls.setup({
	handlers = handlers,
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
	handlers = handlers,
	capabilities = capabilities,
	-- to set null-ls as default formatter
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
})

lspconfig.intelephense.setup({
	handlers = handlers,
	capabilities = capabilities,
})
lspconfig.dockerls.setup({

	handlers = handlers,
	capabilities = capabilities,
})
lspconfig.bashls.setup({
	handlers = handlers,
	capabilities = capabilities,
	-- to set null-ls as default formatter
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
})
lspconfig.tsserver.setup({
	handlers = handlers,
	capabilities = capabilities,
	-- to set null-ls as default formatter
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
})
--lspconfig.stylelint_lsp.setup {capabilities = capabilities }
lspconfig.html.setup({
	handlers = handlers,
	capabilities = capabilities,
	-- to set null-ls as default formatter
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
})
lspconfig.cmake.setup({
	handlers = handlers,
	capabilities = capabilities,
})
lspconfig.lemminx.setup({
	handlers = handlers,
	capabilities = capabilities,
})
lspconfig.vuels.setup({
	handlers = handlers,
	capabilities = capabilities,
	-- to set null-ls as default formatter
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
})
lspconfig.bashls.setup({
	handlers = handlers,
	capabilities = capabilities,
	-- to set null-ls as default formatter
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
})
lspconfig.hls.setup({
	handlers = handlers,
	capabilities = capabilities,
	-- to set null-ls as default formatter
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
})
