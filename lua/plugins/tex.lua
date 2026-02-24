return {
  "lervag/vimtex",
  lazy = false, -- Recommandé pour vimtex
  config = function()
    vim.g.vimtex_view_method = "zathura" -- Ou 'sioyek', 'skim', etc.
  end
}
