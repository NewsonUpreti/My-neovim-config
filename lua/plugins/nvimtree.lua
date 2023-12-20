return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({

			vim.api.nvim_set_keymap("n", "<Space>e", ":NvimTreeOpen<CR>", { noremap = true, silent = true }),

			sort = {
				sorter = "case_sensitive",
			},
			view = {
				adaptive_size = true,
				relativenumber = true,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		})
	end,
}
