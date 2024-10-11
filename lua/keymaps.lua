vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.cursorline = true
vim.opt.signcolumn = "yes:1"
vim.opt.colorcolumn = "100"

vim.opt.tabstop = 2
vim.opt.number = true

-- shifts c/c++ block contents by 2 spaces automatically
vim.opt.shiftwidth = 2

-- round the indents to a multiple of shiftwidth 
vim.opt.shiftround = true

-- expand tabs (\t) into spaces
vim.opt.expandtab = true


--                                 no highlight search carriage return
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<c-l>', '<c-w><c-l>') 
vim.keymap.set('n', '<c-h>', '<c-w><c-h>')
vim.keymap.set('n', '<c-k>', '<c-w><c-k>')
vim.keymap.set('n', '<c-j>', '<c-w><c-j>')

vim.keymap.set('n', '<leader>col', ':set colorcolumn=100<CR>')
vim.keymap.set('n', '<leader>nc', ':set colorcolumn-=100<CR>')


-- osc52 copy works great!
-- normal mode example: <leader>cj would copy everything on current line + next line (j)
-- TO THE SYSTEM CLIPBOARD!!!
vim.keymap.set('n', '<leader>c', require('osc52').copy_operator, {expr = true})
-- Similarly, the following copies entire line
vim.keymap.set('n', '<leader>cc', '<leader>c_', {remap = true})
-- Lastly, this also works in visual mode! Sweet!!!!
vim.keymap.set('v', '<leader>c', require('osc52').copy_visual)


