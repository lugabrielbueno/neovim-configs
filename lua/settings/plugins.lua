local status, packer = pcall(require, "packer")

local ensure_packer = function()
	local fn = vim.fn
	-- Have packer use a popup window
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	packer.init({
		snapshot_path = fn.stdpath("config") .. "/snapshots",
		max_jobs = 50,
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "rounded" })
			end,
			prompt_border = "rounded", -- Border style of prompt popups.
		},
	})
	return false
end

local packer_bootstrap = ensure_packer()

if not status then
	print("Packer is not installed")
	return
end

return packer.startup(function(use)
	use({ "wbthomason/packer.nvim", opt = true })

	-- LSP
	use({ "neovim/nvim-lspconfig" })
	use({ "williamboman/mason.nvim", run = ":MasonUpdate" })
	use({ "onsails/lspkind.nvim" })
	use({ "hrsh7th/cmp-nvim-lsp" })

	-- Completions, formatting and diagnostics
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use({
		"L3MON4D3/LuaSnip",
		tag = "v<CurrentMajor>.*",
		run = "make install_jsregexp",
	})
	use({ "ray-x/lsp_signature.nvim" })
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-cmdline" })
	use({ "hrsh7th/cmp-nvim-lua" })
	use({ "saadparwaiz1/cmp_luasnip" })
	use({ "ray-x/cmp-treesitter" })
	use({ "jose-elias-alvarez/null-ls.nvim", requires = { { "nvim-lua/plenary.nvim" } } })

	--Finder
	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })
	use({ "BurntSushi/ripgrep" })
	use({ "nvim-telescope/telescope-fzf-native.nvim" })

	--Helpers
	use({ "windwp/nvim-autopairs" })
	use({ "windwp/nvim-ts-autotag" })
	use({ "lewis6991/gitsigns.nvim" })
	use({ "kylechui/nvim-surround" })
	use({
		"folke/noice.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	})
	use({ "folke/trouble.nvim" })
	--Colors, icons and themes
	use({ "AlexvZyl/nordic.nvim" })
	use({ "ellisonleao/gruvbox.nvim" })
	use({ "rebelot/kanagawa.nvim" })
	use({ "rmehri01/onenord.nvim" })
	use({ "sainnhe/everforest" })
	use({ "catppuccin/nvim", as = "catppuccin" })
	use({ "norcalli/nvim-colorizer.lua" })

	use({
		"arnaud-lb/vim-php-namespace",
		config = function()
			vim.g.vim_php_namespace_use_getters_setters = 1
		end,
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({ "kyazdani42/nvim-web-devicons" })
	use({ "kyazdani42/nvim-tree.lua" })
	use({ "glepnir/dashboard-nvim" })
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
	--
end)
