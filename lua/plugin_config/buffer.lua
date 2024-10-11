vim.opt.termguicolors = true

local bufferline = require('bufferline')
bufferline.setup{
  options = {
    mode = "buffers", -- set to "tabs" to only show tabpages instead
    diagnostics = "nvim_lsp"
  }

}
