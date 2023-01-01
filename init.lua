-- recommendations from nvim-tree help
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.cmd [[colorscheme lunaperche]]

require ('user.pm') -- packer init/bootstrap
require ('user.plugins') -- init plugins
require ('user.options') 
require ('user.mappings') -- cusom mappings
