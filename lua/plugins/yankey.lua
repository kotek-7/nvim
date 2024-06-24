return {
  "gbprod/yanky.nvim",
  opts = {},
  keys = {
    { "p", mode = {"n", "x"}, "<Plug>(YankeyPutAfter)" },
    { "P", mode = {"n", "x"}, "<Plug>(YankeyPutBefore)" },
    { "gp", mode = {"n", "x"}, "<Plug>(YankeyGPutAfter)" },
    { "gP", mode = {"n", "x"}, "<Plug>(YankeyGPutBefore)" },
    { "<c-p>", mode = "n", "<Plug>(YankeyPreviousEntry)" },
    { "<c-n>", mode = "n", "<Plug>(YankeyNextEntry)" },
  }
}
