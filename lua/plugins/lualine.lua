return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      -- On définit des couleurs inspirées de ton image (Violet/Gris et Rose/Gris)
      local colors = {
        purple = "#957fb8", -- Inspiré de Kanagawa / ton image
        grey   = "#2a2a37",
        pink   = "#d27e99",
        black  = "#16161d",
        white  = "#dcd7ba",
      }

      return {
        options = {
          theme = "kanagawa", -- On reste sur la base Kanagawa
          component_separators = "", -- On enlève les barres "|"
          section_separators = { left = "", right = "" }, -- Les arrondis extérieurs
          globalstatus = true,
        },
        sections = {
          -- Section GAUCHE (Le "0 | io" de ton image)
          lualine_a = {
            { "mode", separator = { left = "", right = "" }, right_padding = 2 },
          },
          lualine_b = {
            { "branch", separator = { right = "" } },
            { "filetype", icon_only = true, separator = { right = "" }, padding = { left = 1, right = 0 } },
            { "filename", separator = { right = "" } },
          },
          
          lualine_c = { "%=" }, -- Vide pour créer l'espace central

          -- Section DROITE (Le "icon | vim" de ton image)
          lualine_x = {
            { "diagnostics", separator = { left = "" } },
          },
          lualine_y = {
            { "progress", separator = { left = "" } },
          },
          lualine_z = {
            { "location", separator = { left = "", right = "" } },
          },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
      }
    end,
  },
}
