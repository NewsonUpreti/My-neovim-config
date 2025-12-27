return {
  "mrcjkb/rustaceanvim",
  version = "^6",
  lazy = true,
  ft = { "rust" }, -- load only for Rust files
  config = function()
    -- Global diagnostic settings (show inline errors)
    vim.opt.signcolumn = "yes"
    vim.diagnostic.config({
      virtual_text = {
        spacing = 2,
        prefix = "●",
      },
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
    })

    -- rust-analyzer configuration
    vim.g.rustaceanvim = {
      server = {
        capabilities = require("cmp_nvim_lsp").default_capabilities(),

        default_settings = {
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = true,
            },
            checkOnSave = {
              command = "check",
            },
            diagnostics = {
              enable = true,
            },
          },
        },
      },
    }
  end,
}
