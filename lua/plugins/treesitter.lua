-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  config = function ()
    require 'nvim-treesitter.install'.compilers = { "gcc" }
  end,
}
