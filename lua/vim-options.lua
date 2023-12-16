vim.wo.number = true
vim.wo.relativenumber = true
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.undofile = true
vim.wo.signcolumn = "yes"
vim.o.clipboard = "unnamedplus"
vim.o.hlsearch = false
vim.o.mouse = "a"
vim.wo.signcolumn = "yes"
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.completeopt = "menuone,noselect"
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.breakindent = true
vim.cmd("set foldmethod=indent")
-- Disable folding in Telescope's result window.
vim.api.nvim_create_autocmd("FileType", { pattern = "TelescopeResults", command = [[setlocal nofoldenable]] })

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

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
vim.api.nvim_set_keymap("n", "<Space>n", ":vsp new<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
