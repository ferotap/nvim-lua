
-- Treesitter configuration

require('nvim-treesitter.configs').setup({
	highlight = { enable = true, additional_vim_regex_highlighting = false},
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
})
