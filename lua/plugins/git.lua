-- Git related plugins
return {
	{
		"lewis6991/gitsigns.nvim",
		config = function ()
      require("gitsigns").setup({
        current_line_blame = true, -- Enable inline git blame
        current_line_blame_opts = {
          virt_text = true, -- Show virtual text (ghost text)
          virt_text_pos = "eol", -- Position: 'eol' | 'overlay' | 'right_align'
          delay = 100, -- Delay before showing blame (in ms)
          ignore_whitespace = false, -- Ignore whitespace when checking blame
        },
        current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>", -- Customize blame text
      })
		end
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

