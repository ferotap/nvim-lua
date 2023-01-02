-- NVIM tree

-- recommendations from nvim-tree help
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require('nvim-tree').setup({
  -- Allow using gx
  -- -- disable_netrw = false,
  -- -- hijack_netrw = false,
  -- -- update_cwd = true,
})
