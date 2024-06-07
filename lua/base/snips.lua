local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_mode

ls.add_snippets("tsx", {
  s("comp", {
    t("export default function "), i(1, "Component"), t("() {"), t({ "", "" }),
    i(0), t({ "", "" }),
    t("}")
  })
})
