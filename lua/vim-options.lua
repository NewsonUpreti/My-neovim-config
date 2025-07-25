vim.o.undofile = true
vim.wo.signcolumn = "yes"
vim.o.clipboard = "unnamedplus"
vim.o.hlsearch = false
vim.o.mouse = ""
vim.wo.signcolumn = "yes"
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.completeopt = "menuone,noselect"
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.breakindent = true
vim.cmd("set foldmethod=indent")
vim.o.cursorline = true
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#02202e" }) -- dark but not transparent

vim.cmd("set foldlevel=99")
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

--Added a diagnostic toggle command for removing and getting diagnostics back when needed
vim.api.nvim_create_user_command("DiagnosticToggle", function()
	local config = vim.diagnostic.config
	local vt = config().virtual_text
	config({
		virtual_text = not vt,
		underline = not vt,
		signs = not vt,
	})
end, { desc = "toggle diagnostic" })
