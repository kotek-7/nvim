return {
  {
    "navarasu/onedark.nvim",
    config = function()
      -- require("onedark").setup {
      --   transparent = true,
      --   lualine = {
      --     transparent = true
      --   }
      -- }
      require('onedark').load()
    end,
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      -- transparent = true,
      -- styles = {
      --   sidebars = "transparent",
      --   floats = "transparent"
      -- }
    }
  }
}
