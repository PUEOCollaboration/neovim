-- Telescope fuzzy finding (all the things)
return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },
		},
		config = function()
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

			-- Enable telescope fzf native, if installed
			pcall(require("telescope").load_extension, "fzf")

			local map = require("helpers.keys").map

			map("n", "<leader>ff", require("telescope.builtin").find_files, "Find File")
			map("n", "<leader>gw", require("telescope.builtin").grep_string, "Grep Cursor Word")
			map("n", "<leader>fg", require("telescope.builtin").live_grep, "Live Grep (all files)")
			map("n", "<leader>sd", require("telescope.builtin").diagnostics, "Diagnostics")

			map("n", "<leader>fr", require("telescope.builtin").oldfiles, "Find Recently Opened File")
			map("n", "<leader>fb", require("telescope.builtin").buffers, "Find Buffer")
			map("n", "<leader>/", function()
				-- You can pass additional configuration to telescope to change theme, layout, etc.
				require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, "Search for string in current buffer")

      --no sure how to use, yet
			map("n", "<leader>sh", require("telescope.builtin").help_tags, "Help")
			map("n", "<C-p>", require("telescope.builtin").keymaps, "Search keymaps")
		end,
	},
}

