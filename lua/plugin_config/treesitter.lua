require'nvim-treesitter.configs'.setup {
  ensure_installed = {"cpp", "lua", "python", "cmake"},

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

}

-- for this to work on OSC, add the following line
-- require 'nvim-treesitter.install'.compilers = { "gcc" }

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.cmd([[set nofoldenable]])








--| Vim folding commands
--| ---------------------------------
--| zf#j creates a fold from the cursor down # lines.
--| zf/ string creates a fold from the cursor to string .
--| zj moves the cursor to the next fold.
--| zk moves the cursor to the previous fold.
--| za toggle a fold at the cursor.
--| zo opens a fold at the cursor.
--| zO opens all folds at the cursor.
--| zc closes a fold under cursor. 
--| zm increases the foldlevel by one.
--| zM closes all open folds.
--| zr decreases the foldlevel by one.
--| zR decreases the foldlevel to zero -- all folds will be open.
--| zd deletes the fold at the cursor.
--| zE deletes all folds.
--| [z move to start of open fold.
--| ]z move to end of open fold.

