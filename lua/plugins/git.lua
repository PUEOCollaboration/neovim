-- Git related plugins
return {
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
	},
	{
		"tpope/vim-fugitive",
		config = function ()
			local map = require("helpers.keys").map

      -- once in Fugitive, press - to (un)stage and = to show diff
			map("n", "<leader>gi", "<cmd>tab Git<cr>", "Open Git Fugitive")
			map("n", "<leader>cm", "<cmd>Gwrite<cr>", "Open Git Fugitive to Commit")
		end
	}
}

