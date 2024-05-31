return {
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      { "neovim/nvim-lspconfig" },
      {
        "williamboman/mason.nvim",
        build = ":MazonUpdate"
      },
      { 'hrsh7th/cmp-nvim-lsp', }
    },
    config = function ()
      require("mason").setup()
      require("mason-lspconfig").setup()

      -- require("mason-lspconfig").setup_handlers {
      --   function (server_name)
      --     require("lspconfig")[server_name].setup {}
      --   end,
      -- }
      local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      lspconfig.lua_ls.setup {
        capabilities = capabilities,
      }
      lspconfig.rust_analyzer.setup {
        capabilities = capabilities,
      }
      lspconfig.volar.setup {
        capabilities = capabilities,
      }
      lspconfig.tsserver.setup {
        capabilities = capabilities,
        init_options = {
          plugins = {
            {
              name = "@vue/typescript-plugin",
              location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
              languages = {"javascript", "typescript", "vue"},
            },
          },
        },
        filetypes = {
          "javascript",
          "typescript",
          "vue",
        },
      }
    end,
  },
  {
    'nvimdev/lspsaga.nvim',
    config = function()
      require('lspsaga').setup({
      })
    end,
  },
}
