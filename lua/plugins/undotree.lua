return {
	"mbbill/undotree",
	config = function()
		vim.keymap.set("n", "<C-x>", vim.cmd.UndotreeToggle)
	end,
}
