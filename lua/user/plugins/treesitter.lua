
-- Treesitter configuration

require('nvim-treesitter.configs').setup({
	-- We must manually specify which parsers to install
	  ensure_installed = {
		"help",
		"vim",
		"bash",
		"c",
		"json",
		"lua",
		"python",
		"yaml",
	},
	highlight = {
		enable=true
	},
	indent = {
		enable=true
	}

})
