local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("comp", {
    t("export default function "), i(1, "Component"), t("() {"), t({ "", "" }),
    t("  "), t("return ("), t({ "", "" }),
    t("    "), i(0), t({ "", "" }),
    t("  "), t(");"), t({ "", "" }),
    t("}")
  }),
}
