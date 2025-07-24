return{
  "nvim-pack/nvim-spectre",
  cmd = "Spectre",
  config = true,
  keys = {
    {
      "<leader><S-Tab>",
      function() require("spectre").open() end,
      mode = "n",
      desc = "Spectre: Global Search & Replace"
    },
    {
      "<leader><Tab>",
      function() require("spectre").open_file_search() end,
      mode = "n",
      desc = "Spectre: Search & Replace in Current File"
    },
  },
}
