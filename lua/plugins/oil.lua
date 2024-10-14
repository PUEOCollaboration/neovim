-- For editing directories as if they are vim buffers
--
-- keymaps: 
--  "-": launch a buffer, which displays current buffers parent directory
--       (you will be in normal mode, edit the buffer as if it's a normal vim buffer to change
--        file names, etc.)
--  "q": close the buffer 

return{
  'stevearc/oil.nvim',
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    }
  },
  lazy = false, -- in order for Oil to be your default file explorer, you cannot lazy load it

  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    require('oil').setup({
      keymaps = {
        ["q"] = "actions.close",
        ["<Esc>"] = "actions.close"
      } 
    })
  end,

  keys = {
    { '-', '<cmd>Oil --float<cr>', mode = 'n', desc = "Open Floating Filesystem" },
  }
}

-- config taken from https://www.reddit.com/r/neovim/comments/1bobi71/how_to_add_oil_to_lazyvim/
