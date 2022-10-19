local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	use({ "wbthomason/packer.nvim", opt = true })

	-- LSP
	use({ "neovim/nvim-lspconfig" })
	use({ "williamboman/nvim-lsp-installer" })
	use({ "onsails/lspkind.nvim" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	--use({ "ray-x/lsp_signature.nvim" })
	use({ "hrsh7th/cmp-nvim-lsp-signature-help" })

	-- Completions, formatting and diagnostics
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use({ "L3MON4D3/LuaSnip" })
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "saadparwaiz1/cmp_luasnip" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-cmdline" })
	use({ "ray-x/cmp-treesitter" })
	use({ "hrsh7th/cmp-nvim-lua" })
	use({ "jose-elias-alvarez/null-ls.nvim", requires = { { "nvim-lua/plenary.nvim" } } })

	--Finder
	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })

	--Helpers
	use({ "windwp/nvim-autopairs" })
	--use({ "windwp/nvim-ts-autotag" })
	use({ "antoinemadec/FixCursorHold.nvim" })
	use({ "lewis6991/gitsigns.nvim" })

	--Colors, icons and themes
	use({ "rmehri01/onenord.nvim" })
	use({ "nvim-lualine/lualine.nvim" })
	use({ "kyazdani42/nvim-web-devicons" })
	use({ "kyazdani42/nvim-tree.lua" })
	use({ "flazz/vim-colorschemes" })
	use({ "sainnhe/everforest" })
	use({ "arcticicestudio/nord-vim" })
	use({ "edkolev/tmuxline.vim" })
	use({ "glepnir/dashboard-nvim" })
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
	--
end)
