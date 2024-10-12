vim.opt.number = true
vim.opt.signcolumn = "yes"

-- Handle plugins through lazy.nvim
require("core.lazy")

-- General Neovim keymaps
require("core.keymaps")

-- Other options
require("core.options")

