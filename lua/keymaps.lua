vim.api.nvim_set_keymap("n", "<Space>t", [[:tabnew | term<CR>:startinsert<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-t>", ":tabnew<CR>", { noremap = true, silent = true })
--Highlight on search toggler
vim.api.nvim_set_keymap("n", "<C-s>", ":set hlsearch!<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<up>", "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<down>", "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<right>", "<nop>", { noremap = true, silent = true })

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

-- Custom keymap for running rust file
vim.api.nvim_set_keymap(
	"n",
	"<Space>z",
	[[:w<CR>:rightbelow vsplit term://rustc % -o %:r && ./%:r<CR>i]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<Space>n", ":new<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Space>v", ":vnew<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Space>w", ":bdelete!<CR>", { noremap = true, silent = true })
--wordwrap config below
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- Define a mapping for backslash to work as gt
vim.api.nvim_set_keymap("n", "|", ":tabnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-BS>", ":tabprevious<CR>", { noremap = true, silent = true })

-- looking after clipboard registers
--[[ vim.api.nvim_set_keymap("n", "<C-l>", ":registers<CR>", { noremap = true, silent = true }) ]]

-- select all keymap for normal mode
-- vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true, silent = true })

-- Exploring windows splits with shortcuts
-- vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<C-;>", "<C-w>w", { noremap = true, silent = true })

-- terminal toggler keymap for normal.insert and terminal mode with ctrl + \ key
vim.api.nvim_set_keymap("n", "<C-\\>", ":ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-\\>", "<C-\\><C-n>:ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-\\>", "<C-\\><C-n>:ToggleTerm<CR>", { noremap = true, silent = true })

-- Increment decrement of ctrl + a and ctrl + x replaced as + and - for normal mode
vim.api.nvim_set_keymap("n", "+", "<C-a>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "-", "<C-x>", { noremap = true, silent = true })

-- Don't yank with x keymap
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true, silent = true })

-- Github copilot chat keymaps
vim.api.nvim_set_keymap("n", "<f9>", ":CopilotChatToggle<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<f8)>", ":CopilotChatToggle<CR>", { noremap = true, silent = true })
