return -- lazy.nvim
{
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		-- add any options here
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		-- "rcarriga/nvim-notify",
	},
	config = function()
		require("noice").setup({
			lsp = {
				-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			-- you can enable a preset for easier configuration
			presets = {
				bottom_search = true, -- use a classic bottom cmdline for search
				command_palette = true, -- position the cmdline and popupmenu together
				long_message_to_split = false, -- long messages will be sent to a split
				inc_rename = false, -- enables an input dialog for inc-rename.nvim
				lsp_doc_border = false, -- add a border to hover docs and signature help
			},
			-- @recording in notification box
			routes = {
				{
					view = "notify",
					filter = { event = "msg_showmode" },
				},
			},
			views = {
				mini = {
					win_options = {
						winblend = 0,
					},
				},
			},
			require("lualine").setup({
				sections = {
					lualine_x = {
						{
							require("noice").api.statusline.mode.get,
							cond = require("noice").api.statusline.mode.has,
							color = { fg = "#f0f0ff" },
						},
					},
				},
			}),
			-- require("notify").setup({
			-- 	-- default timeout for notifications
			-- 	timeout = 3000,
			-- 	-- default background blend
			-- 	blend = 100,
			-- 	-- default icons
			-- 	icons = {
			-- 		ERROR = "",
			-- 		WARN = "",
			-- 		INFO = "",
			-- 		DEBUG = "",
			-- 		TRACE = "✎",
			-- 		FATAL = "",
			-- 	},
			-- 	-- default background colors
			-- 	background_colour = "#000000",
			-- }),
		})
	end,
}
