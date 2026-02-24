return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,    -- On le charge au démarrage pour éviter le flash blanc/noir
    priority = 1000, -- On s'assure qu'il se charge avant les autres plugins
    config = function()
      -- Chargement du thème
      require('kanagawa').setup({
        compile = true,             -- Optimise le temps de chargement
        undercurl = true,           -- Soulignement stylé pour les erreurs
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,        -- Mettez à 'true' si vous voulez le fond de votre terminal
        dimInactive = false,        -- Assombrit les fenêtres non focalisées
        terminalColors = true,      -- Définit les couleurs du terminal interne
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none", -- Rend la colonne des numéros plus propre
              }
            }
          }
        },
        overrides = function(colors)
          return {}
        end,
        theme = "lotus",              -- Options: "wave", "dragon", "lotus"
      })

      -- On applique le thème
      vim.cmd("colorscheme kanagawa")
    end,
  },
}
