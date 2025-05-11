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
    -- <Space>- toggles Oil in project root (.)
    {
      "<leader>-",
      function()
        local oil = require("oil")
        if vim.bo.filetype == "oil" then
          vim.cmd("bdelete") -- close Oil buffer
        else
          oil.open(".") -- open in project root
        end
      end,
      desc = "Toggle Oil at project root",
    },
    -- <Space>o toggles Oil in current file’s directory
    {
      "<leader>o",
      function()
        local oil = require("oil")
        if vim.bo.filetype == "oil" then
          vim.cmd("bdelete") -- close Oil buffer
        else
          local path = vim.fn.expand("%:p:h")
          oil.open(path)
        end
      end,
      desc = "Toggle Oil at current file’s directory",
    },
  },
}
