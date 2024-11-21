return {
  "j-hui/fidget.nvim",
  config = function ()
    require("fidget").setup {
      notification = {
        window = {
          winblend = 0,
        },
      }
    }
    vim.api.nvim_set_hl(0, 'FidgetTitle', { link = "NormalFloat" })
    vim.api.nvim_set_hl(0, 'FidgetTask', { link = "NormalFloat" })
  end
}
