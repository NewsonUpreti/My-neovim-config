return{
  "stevearc/oil.nvim",
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {
      "_",
      function()
        local oil = require("oil")
        if vim.bo.filetype == "oil" then
          vim.cmd("bdelete") -- Close oil buffer
        else
          oil.open() -- Open in parent directory
        end
      end,
      desc = "Toggle Oil at parent directory",
    },
    {
      "<leader>o",
      function()
        local oil = require("oil")
        if vim.bo.filetype == "oil" then
          vim.cmd("bdelete") -- Close oil buffer
        else
          local path = vim.fn.expand("%:p:h")
          oil.open(path) -- Open in current file's directory
        end
      end,
      desc = "Toggle Oil at current file's directory",
    },
  },
}
