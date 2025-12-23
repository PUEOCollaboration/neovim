
return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    config = function()
        require'nvim-treesitter'.install { 'python', 'cmake', 'cpp' }

        -- treesitter README: https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#highlighting
        vim.api.nvim_create_autocmd("FileType", {
            pattern = {'python', 'cmake', 'cpp'},
            callback = function()
                -- Highlights
                vim.treesitter.start()
                -- Folds
                vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
                vim.wo[0][0].foldmethod = "expr"
                -- Indentation
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
        -- See also: https://www.reddit.com/r/neovim/comments/1ppa4ag/comment/nv1geeo/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
    end,
}
