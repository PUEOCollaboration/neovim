-- LSP Configuration & Plugins
return {
  {
    "neovim/nvim-lspconfig",
    vim.lsp.config('pylsp', {
      settings = {
        ['pylsp'] = {
            plugins = {
              pycodestyle = {
                ignore = {'E266','W503', 'W504', 'W605'},
                maxLineLength = 110
              }
            }
        },
      },
    }),
    vim.lsp.enable('pylsp'),
    vim.lsp.enable('clangd'),
    vim.lsp.config("neocmake", {
      init_options = {
        format = {
          enable = true
        },
        lint = {
          enable = false
        },
        scan_cmake_in_package = true -- default is true
      }
    }),
    vim.lsp.enable('neocmake'),


    -- old syntax, deprecated after neovim 0.11

    -- config = function()
    --   local lspconfig = require('lspconfig')
    --   lspconfig.clangd.setup{}
    --   lspconfig.neocmake.setup{
    --     init_options = {
    --       lint = {
    --         enable = false
    --       }
    --     }
    --   }
    --   lspconfig.pylsp.setup{
    --     settings = {
    --       pylsp = {
    --         plugins = {
    --           pycodestyle = {
    --             ignore = {'E266','W503', 'W504', 'W605'},
    --             maxLineLength = 110
    --           }
    --         }
    --       }
    --     }
    --   }
    -- end,
  },
}
