return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>s", builtin.find_files, { desc = "[S]earch [F]iles" })
		vim.keymap.set(
			"n",
			"<leader><space>",
			builtin.buffers,
			{ desc = "[ ] Find existing buffers" }
		)
		vim.keymap.set("n", "<leader>/", function()
			-- You can pass additional configuration to telescope to change theme, layout, etc.
			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
				-- winblend = 10,
        layout_config  = {
          width = 0.6,
          height = 0.6
        },
				previewer = true,
			}))
		end, { desc = "[/] Fuzzily search in current buffer" })
		vim.keymap.set(
			"n",
			"<leader>?",
			builtin.oldfiles,
			{ desc = "[?] Find recently opened files" }
		)

		-- new learned from the primeagen
		--
		vim.keymap.set("n", "<leader>fw", function()
			builtin.grep_string({
				search = vim.fn.input("Grep For > "),
				-- only_sort_text = true,
			})
		end,{desc = "[find word] find word in current repository"})

		vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Search [G]it [F]iles" })
		vim.keymap.set("n", "<leader>gg", ":LiveGrepGitRoot<cr>", { desc = "[S]earch by [G]rep on Git Root" })
		vim.keymap.set("n", "<leader>gr", ":LiveGrep<cr>", { desc = "Live grep on any repo [current]" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[S]earch [H]elp" })
		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<C-u>"] = false,
						["<C-d>"] = false,
					},
				},
			},
		})
		pcall(require("telescope").load_extension, "fzf")

		local function find_git_root()
			-- Use the current buffer's path as the starting point for the git search
			local current_file = vim.api.nvim_buf_get_name(0)
			local current_dir
			local cwd = vim.fn.getcwd()
			-- If the buffer is not associated with a file, return nil
			if current_file == "" then
				current_dir = cwd
			else
				-- Extract the directory from the current file's path
				current_dir = vim.fn.fnamemodify(current_file, ":h")
			end

			-- Find the Git root directory from the current file's path
			local git_root =
				vim.fn.systemlist("git -C " .. vim.fn.escape(current_dir, " ") .. " rev-parse --show-toplevel")[1]
			if vim.v.shell_error ~= 0 then
				print("Not a git repository. Searching on current working directory")
				return cwd
			end
			return git_root
		end

		-- Custom live_grep function to search in git root
		local function live_grep_git_root()
			local git_root = find_git_root()
			if git_root then
				require("telescope.builtin").live_grep({
					search_dirs = { git_root },
				})
			end
		end
    local function live_grep()
    require("telescope.builtin").live_grep()
    end

		vim.api.nvim_create_user_command("LiveGrepGitRoot", live_grep_git_root, {})
		vim.api.nvim_create_user_command("LiveGrep", live_grep, {})
    require "custom_plugins.multigrep".setup()
	end,
}
