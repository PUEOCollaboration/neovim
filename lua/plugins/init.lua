return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
       "cpp"
  		},
  	},
  },

  -- this handles copy and paste to SYSTEM CLIPBOARD! YAY!
  {
    'ojroques/nvim-osc52'
  },

  -- this handles ctrl-(hjkl) movement between neovim and other kitty panes
  -- kitty is a terminal emulator, highly recommend
  {'knubie/vim-kitty-navigator'}

  -- Get gitsigns to print git blame in line by default
  require('gitsigns').setup({current_line_blame = true})
  -- quick and dirty; idk if this is the best place to add this requirement...
}
