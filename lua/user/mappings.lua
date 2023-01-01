local map = require('user.utils').map

vim.g.mapleader = ' '
vim.g.localmapleader = ' '

-- General mappings

map('n', '<leader>w', '<CMD>w<CR>')
map('i', 'jk', '<ESC>')

------------------
-- Plugin specific
-- nvmtree
map('n', '<leader>e', '<Cmd>NvimTreeToggle<CR>')
