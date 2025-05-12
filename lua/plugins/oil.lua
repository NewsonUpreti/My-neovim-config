return {
  "stevearc/oil.nvim",
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
    keymaps = {
      ["q"] = "actions.close",
      ["<CR>"] = "actions.select",
      -- shit, p was for paste. bullshit
      -- ["p"] = "actions.preview", -- Preview file
      ["<Tab>"] = "actions.preview", -- Also Tab to preview
    },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {
      "<leader>-",
      function()
        local oil = require("oil")
        if vim.bo.filetype == "oil" then
          vim.cmd("bdelete")
        else
          oil.open(".")
        end
      end,
      desc = "Toggle Oil at project root",
    },
    {
      "<leader>o",
      function()
        local oil = require("oil")
        if vim.bo.filetype == "oil" then
          vim.cmd("bdelete")
        else
          local path = vim.fn.expand("%:p:h")
          oil.open(path)
        end
      end,
      desc = "Toggle Oil at current file’s directory",
    },
  },
}
