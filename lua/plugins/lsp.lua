-- LSP Configuration & Plugins
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.clangd.setup{}
      lspconfig.neocmake.setup{}
      lspconfig.pylsp.setup{
        settings = {
          pylsp = {
            plugins = {
              pycodestyle = {
                ignore = {'E266','W503', 'W504', 'W605'},
                maxLineLength = 110
              }
            }
          }
        }
      }
    end,
  },
}
