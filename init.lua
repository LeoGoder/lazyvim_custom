-- 2. Config spécifique pour C et C++ : Vraies Tabulations
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function()
    vim.opt_local.expandtab = false -- Désactive la conversion en espaces
    vim.opt_local.tabstop = 8      -- Souvent 8 en C, mais tu peux mettre 4
    vim.opt_local.shiftwidth = 8
  end,
})
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
