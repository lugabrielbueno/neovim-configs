local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return packer.startup(function(use)
	use({ "wbthomason/packer.nvim", opt = true })

	-- LSP
	use({ "neovim/nvim-lspconfig" })
	use({ "williamboman/nvim-lsp-installer" })
	use({
		"williamboman/mason.nvim",
		run = ":MasonUpdate", -- :MasonUpdate updates registry contents
	})
	use({ "onsails/lspkind.nvim" })
	use({ "hrsh7th/cmp-nvim-lsp" })

	-- Completions, formatting and diagnostics
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use({
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		tag = "v<CurrentMajor>.*",
		-- install jsregexp (optional!:).
		run = "make install_jsregexp",
	})
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
	use({ "BurntSushi/ripgrep" })
	use({ "nvim-telescope/telescope-fzf-native.nvim" })

	--Helpers
	use({ "windwp/nvim-autopairs" })
	--use({ "windwp/nvim-ts-autotag" })
	--	use({ "antoinemadec/FixCursorHold.nvim" })
	use({ "lewis6991/gitsigns.nvim" })
	--use({ "glepnir/lspsaga.nvim", branch = "main" })

	--Colors, icons and themes
	--	use({ "rmehri01/onenord.nvim" })
	use({ "sainnhe/everforest" })
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
