return {
	"mbbill/undotree",
	config = function()
		vim.keymap.set("n", "<C-y>", vim.cmd.UndotreeToggle)
	end,
}
