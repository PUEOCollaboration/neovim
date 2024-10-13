local opts = {
  
  -- shifts c/c++ block contents by 2 spaces automatically
  -- ie. when you are in a for{...} and press o to insert a new line
  -- your cursor will already be indented with 2 whitespace (default is 8 I think)
  shiftwidth = 2,

  -- wraps long lines into the next visual line (not a real buffer line)
  wrap = true,

  -- 2 whitespaces as a tab
  tabstop = 2,

  -- expands tabs (\t) into spaces
  expandtab = true,

  -- was highly recommended to enable this
  termguicolors = true,
  
  -- setting the absolute number column
  number = true,

  -- leaving some space for git signs
  signcolumn = "yes",

  cursorline = true,

  -- color column at 100 to remind you to switch to a new line
  colorcolumn = "100",
}

-- Set options from table
for opt, val in pairs(opts) do
	vim.o[opt] = val
end


-- using osc52 as the clipboard provider so that inside a container we can still
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
