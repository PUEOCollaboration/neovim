require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "pyright", "cmake"}
})


require("lspconfig").lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = { globals = { 'vim'} }
    }
  }
}

require("lspconfig").pyright.setup{}

require("lspconfig").cmake.setup{ }

-- mason doesn't find this one in our Docker container, so I'm installing this through dnf
require("lspconfig").clangd.setup{}

