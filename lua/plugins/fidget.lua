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
    vim.api.nvim_set_hl(0, 'FidgetTitle', { link = "NormalFloat" })
    vim.api.nvim_set_hl(0, 'FidgetTask', { link = "NormalFloat" })
  end,
  tag = "legacy"
}
