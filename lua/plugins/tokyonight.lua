return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    -- use the night style
   --style = "moon",
   --style = "storm",             -- Puedes elegir "night", "storm", "day" o "moon"

    transparent = true,          -- Activar transparencia
    terminal_colors = false,      -- Usa colores del tema en el terminal
    styles = {
        sidebars = "transparent", -- Hace transparentes las barras laterales
        floats = "transparent",   -- Hace transparentes las ventanas flotantes
        variables = {italic = false },                     -- Puedes agregar cursiva si lo deseas
        parameters = { italic = true },
        keywords = { italic = true},
        functions = {italic = false},
    },
    on_colors = function(colors)
       -- colors.bg = "#1a1b26"  -- Color de fondo, ajustado para un tono TokyoNight
    end,
    on_highlights = function(hl, c)

        hl["@variable.parameter"] = { fg = c.orange, italic = true, bg = c.bg_highlight }  -- Color para parámetros de funciones
        hl["@variable.builtin"] = { italic = true, fg = c.red }
        hl["@punctuation.bracket"] = { fg = "#82aaff" }

        hl.DiagnosticVirtualTextHint = {fg = "#4fd6be"}
        hl.DiagnosticVirtualTextError = {fg = "#c53b53"}
        hl.DiagnosticVirtualTextInfo = {fg = "#0db9d7"}
        hl.DiagnosticVirtualTextWarn = {fg = "#ffc777"}

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
