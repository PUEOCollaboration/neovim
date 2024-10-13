local opts = {
  tabstop = 2,

  -- shifts c/c++ block contents by 2 spaces automatically
  shiftwidth = 2,
  wrap = false,

  -- expands tabs (\t) into spaces
  expandtab = true,

  -- was highly recommended to enable this
  termguicolors = true,
}

-- Set options from table
for opt, val in pairs(opts) do
	vim.o[opt] = val
end

-- Set other options
local colorscheme = require("helpers.colorscheme")
vim.cmd.colorscheme(colorscheme)


-- using osc52 as clipboard provider so that inside a container we can still
-- yank stuff to the system clipboard (using vim's register +)
vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
    ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
  },
  paste = {
    ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
    ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
  },
}
