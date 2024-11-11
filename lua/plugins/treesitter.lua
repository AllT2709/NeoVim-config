-- Customize Treesitter

---@type LazySpec
-- return {
--   "nvim-treesitter/nvim-treesitter",
--   config = function()
--     require("nvim-treesitter.install").compilers = { "gcc" }
--
--     require("nvim-treesitter.configs").setup({
--         
--     })
--   end,
-- }
--
return {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate", -- Actualiza Treesitter automáticamente
    opts = {
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline","javascript","typescript" }, -- Añade los lenguajes que usas
      highlight = {
        enable = true,   -- Activa el resaltado de sintaxis
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true }, -- Activa la indentación automática
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
}
