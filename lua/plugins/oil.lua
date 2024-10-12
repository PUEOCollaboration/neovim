-- for editing directories as if they are vim buffers
return{
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  config = function()
    require('oil').setup({    keymaps = {     ["q"] = "actions.close"    }   })
  end,
  keys = {
    -- { '=', '<cmd>Oil<cr>', mode = 'n', desc = "Open Filesystem" },
    { '-', '<cmd>Oil --float<cr>', mode = 'n', desc = "Open Floating Filesystem" },
  }
}

-- config taken from https://www.reddit.com/r/neovim/comments/1bobi71/how_to_add_oil_to_lazyvim/
