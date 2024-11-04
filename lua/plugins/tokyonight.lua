return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    -- use the night style
   style = "moon",
  -- style = "night",             -- Puedes elegir "night", "storm", "day" o "moon"

    transparent = true,          -- Activar transparencia
    terminal_colors = true,      -- Usa colores del tema en el terminal
    styles = {
        sidebars = "transparent", -- Hace transparentes las barras laterales
        floats = "transparent",   -- Hace transparentes las ventanas flotantes
    },
    on_colors = function(colors)
        colors.bg = "#1a1b26"  -- Color de fondo, ajustado para un tono TokyoNight
    end,
    on_highlights = function(hl, c)

        hl.StatusLine = { bg = "none", fg = c.fg }
        hl.StatusLineNC = { bg = "none", fg = c.fg_dark }
        hl.TabLine = { bg = "none", fg = c.fg }
        hl.TabLineFill = { bg = "none" , fg = c.blue}
        hl.TabLineSel = { bg = "none" }

        hl.NormalFloat = { bg = "none" }
        hl.FloatBorder = { bg = "none" }
        hl.FloatTitle = { bg = "none" }

        hl.Pmenu = { bg = "none", fg = c.fg_dark }
        hl.PmenuSel = { bg = c.blue, fg = "NONE" }
        hl.PmenuSbar = { bg = c.bg_highlight }
        hl.PmenuThumb = { bg = c.blue }

        -- Personalización de Telescope

        hl.TelescopeBorder = { fg = c.border_highlight, bg = "none" }
        hl.TelescopeTitle = { fg = c.blue, bold = true }
        hl.TelescopePromptNormal = { bg = "none", fg = c.blue }
        hl.TelescopePromptBorder = { fg = c.border_highlight, bg = "none" }
        hl.TelescopeResultsNormal = { bg = "none", fg = c.blue }
        hl.TelescopeResultsBorder = { fg = c.border_highlight, bg = "none" }
        hl.TelescopePreviewNormal = { bg = "none", fg = c.blue }
        hl.TelescopePreviewBorder = { fg = c.border_highlight, bg = "none" }

         -- Ajuste para resaltar los archivos en el menú
        hl.TelescopeSelection = { bg = c.bg_highlight, fg = c.orange, bold = true }  -- Archivos seleccionados en naranja
        hl.TelescopeSelectionCaret = { fg = c.orange } -- Cursor de selección en naranja

    end,
 }
}
