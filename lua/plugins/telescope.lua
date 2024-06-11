return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'BurntSushi/ripgrep',
    'nvim-telescope/telescope-fzf-native.nvim',
    'sharkdp/fd',
    {
      "nvim-telescope/telescope-frecency.nvim",
      config = function()
        require("telescope").load_extension("frecency")
      end,
    },
  },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader><leader>', "<cmd>Telescope frecency<cr>", { desc = "Find file frecency" })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>fc', builtin.commands, {})
    vim.keymap.set('n', '<leader>fC', function()
      builtin.colorscheme { enable_preview = true }
    end, {})
    vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})
    require('telescope').setup {
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          "target",
          ".git"
        }
      }
    }
  end,
}
