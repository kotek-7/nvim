return {
  "NeogitOrg/neogit",

  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration
    "nvim-telescope/telescope.nvim", -- optional
  },

  opts = {},

  keys = {
    { "<leader>G", mode = "n", function() require("neogit").open() end, }
  }
}
