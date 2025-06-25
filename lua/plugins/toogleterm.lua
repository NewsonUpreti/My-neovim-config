return { "akinsho/toggleterm.nvim", version = "*",
  config = function()
require('toggleterm').setup{
    direction = 'horizontal',
      float_opts = {
        border = 'curved'
      },
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_mode = true
  }
  end
}
