vim.api.nvim_set_keymap("n", "<Space>t", [[:tabnew | term<CR>:startinsert<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-t>", ":tabnew<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	"<Space>p",
	[[:w<CR>:rightbelow vsplit term://python3 %<CR>i]],
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<Space>j",
	[[:w<CR>:rightbelow vsplit term://node %<CR>i]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<Leader>n", [[:tabnew<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-c>", [[:cd %:p:h<CR>]], { noremap = true, silent = true })

vim.cmd(
	[[autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None]]
)
vim.api.nvim_set_keymap(
	"n",
	"<Space>r",
	[[:w<CR>:rightbelow vsplit term://g++ % -o %:r && ./%:r<CR>i]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<Space>n", ":sp new<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Space>v", ":vsp tabnew<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Space>w", ":bdelete<CR>", { noremap = true, silent = true })
