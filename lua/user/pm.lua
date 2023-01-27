-- Bootstrap package manager.
-- Adapted from `https://github.com/wbthomason/packer.nvim#bootstrapping`.

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use ({
		"lewis6991/impatient.nvim",
		config = function() require('user.plugins.treesitter') end,
	})

	use ({
		"goolord/alpha-nvim",
		config = function() require('user.plugins.alpha') end,
	})

  use ({
    "ahmedkhalf/project.nvim",
    config = function() require('user.plugins.project') end
  })
	-- Treesitter
	use({
    'nvim-treesitter/nvim-treesitter',
		config = function() require('user.plugins.treesitter') end,
		--    run = ':TSUpdate'
	})

  use ({
    "akinsho/toggleterm.nvim",
    -- tag = '*',
    config = function() require("user.plugins.toggleterm") end
  })

  -- tokyonight
	use ({
		'folke/tokyonight.nvim',
		config = function() require('user.plugins.tokyonight') end,
	})

  use ({ 'shaunsingh/solarized.nvim' })
  use ({ 'navarasu/onedark.nvim' })
	-- Lua
	use  {
		"folke/which-key.nvim",
		config = function() require("user.plugins.which-key") end
	}

  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function() require("user.plugins.trouble") end
  }
	-- Autocomplete
	use({
		"hrsh7th/nvim-cmp",
		-- Sources for nvim-cmp
		requires = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-cmdline",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function() require('user.plugins.cmp') end,
	})

	-- snippets
	use { "L3MON4D3/LuaSnip" } --snippet engine
	use { "rafamadriz/friendly-snippets" } -- a bunch of snippets to use

	-- LSP
	-- use { "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" } -- simple to use language server installer
	use { "neovim/nvim-lspconfig" } -- enable LSP
	use { "williamboman/mason.nvim" }
	use { "williamboman/mason-lspconfig.nvim" }
	use { "jose-elias-alvarez/null-ls.nvim" } -- for formatters and linters
	use { "RRethy/vim-illuminate" }

	-- Git
	use { "lewis6991/gitsigns.nvim" }

	-- DAP
	use { "mfussenegger/nvim-dap" }
	use { "rcarriga/nvim-dap-ui" }
	use { "ravenxrz/DAPInstall.nvim" }

	-- Telescope
	use({'nvim-telescope/telescope-fzf-native.nvim', run ='make'})
	use({
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/plenary.nvim'}},
		config = function() require('user.plugins.telescope') end,
	})

	-- bufferline
	use({
		'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function() require('user.plugins.bufferline') end,
		event = 'BufWinEnter',
	})

	-- statusline
	use({
		'hoob3rt/lualine.nvim',
		config = function() require('user.plugins.lualine') end,
	})

	--nvim-tree
	use({
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function() require('user.plugins.nvimtree') end,  -- Must add this manually
	})
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
