return {
	"mbbill/undotree",
	config = function()
		vim.keymap.set("n", "<leader>x", vim.cmd.UndotreeToggle)
	end,
}
