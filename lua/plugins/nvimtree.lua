return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({

			vim.api.nvim_set_keymap("n", "<Space>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true }),
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 50,
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
