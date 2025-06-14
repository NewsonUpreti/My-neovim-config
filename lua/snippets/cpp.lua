local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("cpp", {
    t({
      "#include<iostream>",
      "using namespace std;",
      "using ll = long long;",
      "",
      "int main(void) {",
      "    ",
    }),
    i(0),
    t({
      "",
      "}",
    }),
  }),
}
