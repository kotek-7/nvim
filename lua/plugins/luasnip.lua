return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    'rafamadriz/friendly-snippets',
    cond = false,
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
  version = "v2.*",
  build = "make install_jsregexp",
  config = function()

  end,
}
