-- For editing directories as if they are vim buffers
--
-- Tip: to open multiple files, highlight them in any VISUAL mode and press enter.
--
-- keymaps: 
--  -: launch a buffer, which displays current buffers parent directory
--     (you will be in normal mode, edit the buffer as if it's a normal vim buffer to change
--      file names, etc.)
--  =: same as -, but not floating
--  g.: show/hide hidden files
--
--  ctrl+c: close the Oil buffer (does not work in preview mode)
--  gq: close the Oil buffer (works in preview mode, if anything, you can always :q)
--
--  ctrl+s: opens a file to a side split pane.
--  ctrl+h: opens in a horizontal split; or,
--          in Oil preview mode, this will close the Oil buffer.
--
--  ctrl+p: previews a file (preview open on the side)
--  ctrl+i: previews a file (takes up the entire Oil buffer)
--
--  _: inside Oil, go to the current working directory (cwd).
--  ~: inside Oil, set the neovim cwd to the current Oil directory
--

return{
  'stevearc/oil.nvim',
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false, -- in order for Oil to be your default file explorer, you cannot lazy load it

  config = function()
    require('oil').setup({
      default_file_explorer = true,
      skip_confirm_for_simple_edits = true,
      keymaps = {
        ["<C-h>"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
        ["<C-s>"] = { "actions.select", opts = { horizontal = false }, desc = "Open the entry in a vertical split" },
      },
    })
  end,

  keys = {
    { '-', '<cmd>Oil --float<cr>', mode = 'n', desc = "Open Floating Filesystem" },
    -- { '=', '<cmd>Oil <cr>', mode = 'n', desc = "Open Filesystem" },
    { 'gq', '<cmd>close<cr>', mode = 'n', desc = "Almost the same as actions.close" },
  }
}

-- config taken from https://www.reddit.com/r/neovim/comments/1bobi71/how_to_add_oil_to_lazyvim/
