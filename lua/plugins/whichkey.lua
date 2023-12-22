return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {},
}
