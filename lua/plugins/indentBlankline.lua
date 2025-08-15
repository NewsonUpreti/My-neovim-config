return{
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    scope = { enabled = true, highlight = { "Function", "Conditional" } },
    indent = {
      char = "┊",
    },
  },
  config = function(_, opts)
    -- Neutral grey for all regular indents
    vim.cmd [[ highlight IndentBlanklineIndent guifg=#313244 gui=nocombine ]]

    require("ibl").setup(vim.tbl_extend("force", opts, {
      indent = {
        char = opts.indent.char,
        highlight = { "IndentBlanklineIndent" },
      },
    }))
  end
}
