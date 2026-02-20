return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>gs", function()
			vim.cmd("vert topleft Git")
			local width = math.floor(vim.o.columns * 0.25)
			vim.cmd("vertical resize " .. width)
		end)

		vim.keymap.set("n", "<leader>gd", "<cmd>Gvdiffsplit<cr>")

		vim.api.nvim_create_autocmd("FileType", {
			pattern = "fugitive",
			callback = function()
				vim.opt_local.splitright = true
				vim.opt_local.splitbelow = false
			end,
		})

		local ThePrimeagen_Fugitive = vim.api.nvim_create_augroup("ThePrimeagen_Fugitive", {})

		local autocmd = vim.api.nvim_create_autocmd
		autocmd("BufWinEnter", {
			group = ThePrimeagen_Fugitive,
			pattern = "*",
			callback = function()
				if vim.bo.ft ~= "fugitive" then
					return
				end

				local bufnr = vim.api.nvim_get_current_buf()
				local opts = { buffer = bufnr, remap = false }
				vim.keymap.set("n", "<leader>P", function()
					vim.cmd.Git("push")
				end, opts)

				-- rebase always
				vim.keymap.set("n", "<leader>p", function()
					vim.cmd.Git({ "pull", "--rebase" })
				end, opts)

				vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts)
			end,
		})

		vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
		vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")
	end,
}
