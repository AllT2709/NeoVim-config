-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        "ts_ls",
        "pyright",
        "html",          -- HTML (útil para proyectos web con JS)
        "cssls",         -- CSS (útil para proyectos web con JS)
        "jsonls",        -- JSON (útil para configuración)
        "bashls",        -- Bash (útil para scripts)
        "yamlls",        -- YAML (útil para configuración)
        "dockerls",      -- Docker (útil para entornos de desarrollo)
        "tailwindcss",   -- Tailwind CSS (útil para proyectos web
        -- add more arguments for adding more language servers
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "prettier",
        "stylua",
        "black",
        "yamlfmt",        -- yml formater
        "eslint_d",
        "ruff",           -- Nuevo: reemplazo moderno a flake8/pylint
        "mypy",
        "yamllint",       -- yml linter
        "markdownlint",   -- Opcional si editas Markdown
        -- add more arguments for adding more null-ls sources
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "python",
        "js"
        -- add more arguments for adding more debuggers
      })
    end,
  },
}
