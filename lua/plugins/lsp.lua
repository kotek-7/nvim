return {
  {
    "williamboman/mason-lspconfig.nvim",

    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
    },

    event = { "BufReadPre", "BufNewFile" },

    config = function()
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("lsp-attach", {}),
        callback = function(event)
          vim.keymap.set('n', '<leader>cd', '<cmd>Lspsaga diagnostic_jump_next<CR>',
            { buffer = event.buf, desc = "Show diagnostic" })
          vim.keymap.set('n', 'gd', '<cmd>Lspsaga peek_definition<CR>', { buffer = event.buf, desc = "Goto Definition" })
          vim.keymap.set('n', 'gD', '<cmd>Lspsaga peek_type_definition<CR>',
            { buffer = event.buf, desc = "Goto Type Declaration" })
          vim.keymap.set('n', 'gi', require("telescope.builtin").lsp_implementations,
            { buffer = event.buf, desc = "Goto Implementation" })
          vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', { buffer = event.buf, desc = 'Hover Documentation' })
          vim.keymap.set('n', '<leader>cf', function()
            vim.lsp.buf.format({ async = true })
          end, { buffer = event.buf, desc = 'Code Format' })
          vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', { buffer = event.buf, desc = 'Code Action' })
          vim.keymap.set('n', '<leader>cr', '<cmd>Lspsaga rename<CR>', { buffer = event.buf, desc = 'Rename' })
        end,
      })

      local capabilities = vim.tbl_deep_extend(
        "force",
        vim.lsp.protocol.make_client_capabilities(),
        {},
        require("cmp_nvim_lsp").default_capabilities()
      )

      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "tsserver",
          "html",
          "cssls",
          "tailwindcss",
          "rust_analyzer",
          "eslint"
        },
      })
      require("mason-lspconfig").setup_handlers({
        function(server_name)
          require("lspconfig")[server_name].setup({
            capabilities = capabilities,
          })
        end,

        ["tsserver"] = function()
          require("lspconfig").tsserver.setup({
            init_options = {},
            filetypes = {
              "javascript",
              "typescript",
              "typescriptreact",
              "typescript.tsx",
              "vue",
            },
          })
        end,
      })
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
    opts = {},
  },
}
