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

-- Trouble
map("n", "<leader>xx", "<cmd>TroubleToggle<cr>")
map("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>")
map("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>")
map("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>")
map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>")
map("n", "gR", "<cmd>TroubleToggle lsp_references<cr>")
