return {
  'akinsho/toggleterm.nvim',
  lazy = true,
  version = "*",
  keys = {
    { "<leader>gg", mode = "n" },
  },
  config = function()
    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit  = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
    local function lazygit_toggle()
      lazygit:toggle()
    end

    vim.keymap.set('n', '<leader>gg', lazygit_toggle, { desc = "Toggle lazygit" })

    require("toggleterm").setup {
      open_mapping = [[<C-\>]],
      hide_numbers = true,
      direction = "float",
      shell = "pwsh"
    }
  end,
}
