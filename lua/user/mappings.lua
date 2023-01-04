local map = require('user.utils').map

vim.g.mapleader = ' '
vim.g.localmapleader = ' '

-- General mappings

map('n', '<leader>w', '<CMD>w<CR>')
map('i', 'jk', '<ESC>')

map({'n', 'x'}, 'cy', '"+y') -- copy from clipboard
map({'n', 'x'}, 'cp', '"+p') -- copy to clipboard
------------------
-- Plugin specific
-- nvmtree
map('n', '<leader>e', '<Cmd>NvimTreeToggle<CR>')
