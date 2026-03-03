return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      -- 1. On définit une palette de couleurs
      local colors = {
        bg       = "#16161e", -- Couleur de fond sombre pour le milieu
        fg       = "#c0caf5",
        yellow   = "#e0af68",
        cyan     = "#7dcfff",
        green    = "#9ece6a",
        orange   = "#ff9e64",
        magenta  = "#bb9af7",
        blue     = "#7aa2f7",
        red      = "#f7768e",
        grey     = "#3b4261",
      }

      -- 2. On crée le thème personnalisé
      local my_custom_theme = {
        normal = {
          a = { fg = colors.bg, bg = colors.orange, gui = "NONE" }, -- Mode Normal
          b = { fg = colors.bg, bg = colors.cyan },
          c = { fg = colors.bg, bg = colors.red },               -- LE MILIEU (Normal)
        },
        insert = {
          a = { fg = colors.bg, bg = colors.red, gui = "NONE" }, -- Mode Insertion
          c = { fg = colors.fg, bg = colors.bg },
        },
        visual = {
          a = { fg = colors.bg, bg = colors.magenta, gui = "NONE" }, -- Mode Visuel
          c = { fg = colors.fg, bg = colors.bg },
        },
        replace = {
          a = { fg = colors.bg, bg = colors.yellow, gui = "NONE" },    -- Mode Remplacement
          c = { fg = colors.fg, bg = colors.bg },
        },
        command = {
          a = { fg = colors.bg, bg = colors.orange, gui = "NONE" }, -- Mode Commande
          c = { fg = colors.fg, bg = colors.bg },
        },
      }

      -- 3. On retourne la configuration complète
      return {
        options = {
          theme = my_custom_theme, -- On applique notre thème
          section_separators = { left = "", right = "" },
          component_separators = { left = "|", right = "|" },
          globalstatus = true,
        },
        sections = {
          lualine_a = { { "mode", format = function(str) return str:sub(1, 1) == "V" and "VISUAL" or str end } },
          lualine_b = { "branch" },
          lualine_c = { "filetype", "filename" }, -- C'est ici le milieu
          lualine_x = { "encoding", "fileformat" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      }
    end,
  },
}
