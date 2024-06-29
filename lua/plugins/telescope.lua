return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'BurntSushi/ripgrep',
    'nvim-telescope/telescope-fzf-native.nvim',
    'sharkdp/fd',
    {
      "danielfalk/smart-open.nvim",
      branch = "0.2.x",
      config = function()
        require("telescope").load_extension("smart_open")
      end,
      dependencies = {
        "kkharji/sqlite.lua",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      },
    },
    {
      "nvim-telescope/telescope-frecency.nvim",
      config = function()
        require("telescope").load_extension("frecency")
      end,
    },
    {
      "ahmedkhalf/project.nvim",
      config = function ()
        require('telescope').load_extension('projects')
      end
    }
  },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>ff", function()
      require("telescope").extensions.frecency.frecency {}
    end)
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Live Grep" })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find from Buffers" })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find Helps" })
    vim.keymap.set('n', '<leader>fc', builtin.commands, { desc = "Find Commands" })
    vim.keymap.set('n', '<leader>fC', function()
      builtin.colorscheme { enable_preview = true }
    end, { desc = "Find Colorschemes" })
    vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = "Find Keymaps" })
    vim.keymap.set("n", "<leader>fp", require("telescope").extensions.projects.projects, { desc = "Find Projects"})
    require('telescope').setup {
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          "target",
          ".git"
        }
      },
      extensions = {
        ---@type FrecencyOpts
        frecency = {
          matcher = "fuzzy",
        },
      }
    }
  end,
}
