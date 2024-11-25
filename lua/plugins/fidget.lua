return {
  "j-hui/fidget.nvim",
  lazy = true,
  event = "LspAttach",
  config = function ()
    require("fidget").setup {
      notification = {
        window = {
          winblend = 0,
          relative = "editor"
        },
      }
    }
  end,
  tag = "legacy"
}
