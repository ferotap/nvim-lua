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
map("n", "<leader>xr", "<cmd>TroubleToggle lsp_references<cr>")

-- bufferline

map("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>")
map("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>")
map("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>")
map("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>")
map("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>")
map("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>")
map("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>")
map("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>")
map("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>")
map("n", "<leader>$", "<Cmd>BufferLineGoToBuffer -1<CR>")
