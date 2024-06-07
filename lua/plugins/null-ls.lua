return {
  "jay-babu/mason-null-ls.nvim",

  dependencies = {
    "williamboman/mason.nvim",
    {
      "nvimtools/none-ls.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim",
      },
    },
  },

  event = { "BufReadPre", "BufNewFile" },

  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettierd.with({
          prefer_local = "node_modules/.bin",
        }),
        null_ls.builtins.formatting.stylua,
      },
      on_attach = function(client, bufnr)
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ timeout_ms = 5000 })
            end,
          })
        end
      end,
    })
    require("mason-null-ls").setup({
      handlers = {},
    })
  end,
}
