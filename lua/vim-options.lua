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
-- vim.o.clipboard = "unnamedplus"
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
