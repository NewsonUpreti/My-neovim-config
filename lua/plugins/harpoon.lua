return {
	"ThePrimeagen/harpoon",
	--branch 2 was throwing error in my config so it is disabled
	--	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set(
			"n",
			"<leader>m",
			"<cmd>lua require('harpoon.mark').add_file()<cr>",
			{ desc = "Mark file with harpoon" }
		)
		keymap.set(
			"n",
			"<leader>]",
			"<cmd>lua require('harpoon.ui').nav_next()<cr>",
			{ desc = "Go to next harpoon mark" }
		)
		keymap.set(
			"n",
			"<leader>[",
			"<cmd>lua require('harpoon.ui').nav_prev()<cr>",
			{ desc = "Go to previous harpoon mark" }
		)
		keymap.set(
			"n",
			"<leader>u",
			"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
			{ desc = "Toggling Harpoon quick Menu" }
		)

		keymap.set(
			"n",
			"<leader>1",
			"<cmd>lua require('harpoon.ui').nav_file(1)<cr>",
			{ desc = "Toggling Harpoon quick Menu" }
		)

		keymap.set(
			"n",
			"<leader>2",
			"<cmd>lua require('harpoon.ui').nav_file(2)<cr>",
			{ desc = "Toggling Harpoon quick Menu" }
		)

		keymap.set(
			"n",
			"<leader>3",
			"<cmd>lua require('harpoon.ui').nav_file(3)<cr>",
			{ desc = "Toggling Harpoon quick Menu" }
		)

		keymap.set(
			"n",
			"<leader>4",
			"<cmd>lua require('harpoon.ui').nav_file(4)<cr>",
			{ desc = "Toggling Harpoon quick Menu" }
		)

		keymap.set(
			"n",
			"<leader>5",
			"<cmd>lua require('harpoon.ui').nav_file(5)<cr>",
			{ desc = "Toggling Harpoon quick Menu" }
		)
		keymap.set(
			"n",
			"<leader>6",
			"<cmd>lua require('harpoon.ui').nav_file(5)<cr>",
			{ desc = "Toggling Harpoon quick Menu" }
		)
		keymap.set(
			"n",
			"<leader>7",
			"<cmd>lua require('harpoon.ui').nav_file(5)<cr>",
			{ desc = "Toggling Harpoon quick Menu" }
		)
		keymap.set(
			"n",
			"<leader>8",
			"<cmd>lua require('harpoon.ui').nav_file(5)<cr>",
			{ desc = "Toggling Harpoon quick Menu" }
		)
		keymap.set(
			"n",
			"<leader>9",
			"<cmd>lua require('harpoon.ui').nav_file(5)<cr>",
			{ desc = "Toggling Harpoon quick Menu" }
		)
		keymap.set(
			"n",
			"<leader>0",
			"<cmd>lua require('harpoon.ui').nav_file(5)<cr>",
			{ desc = "Toggling Harpoon quick Menu" }
		)
	end,
}
