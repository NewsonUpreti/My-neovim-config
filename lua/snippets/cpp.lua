local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("cpp", {
    t({
      "#include<iostream>",
      "#include<string>",
      "#include<vector>",
      "#include<math.h>",
      "using namespace std;",
      "using ll = long long;",
      "using d = double;",
      "using f = float;",
      "using s = string;",
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
