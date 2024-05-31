return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function ()
    local null_ls = require("null-ls")
    require("null-ls").setup {
      sources = {
        null_ls.builtins.formatting.prettier.with {
          prefer_local = "node_modules/.bin",
        },
      },
    }
  end,
}
