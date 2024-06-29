return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>')

    require("nvim-tree").setup {
      hijack_cursor = true,
      disable_netrw = true,
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      reload_on_bufenter = true,
      renderer = {
        icons = {
          show = {
            modified = true
          }
        }
      },
      update_focused_file = {
        enable = true,
        update_root = true,
      },
      diagnostics = {
        enable = true,
      },
      modified = {
        enable = true,
      },
    }
  end,
}
