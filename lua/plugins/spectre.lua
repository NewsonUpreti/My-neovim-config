
-- lazy.nvim or packer
return{
  "nvim-pack/nvim-spectre",
  cmd = "Spectre",
  config = true,
  keys = {
    { "<leader><Tab>", function() require("spectre").open() end, desc = "Search & Replace (Spectre)" },
  },
}
