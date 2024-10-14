If you have use Vim before, I hope you will love this Neovim experience.

# Introduction

[TOC]
## LSP and code completion

Since we mainly use C++, our Neovim has been configured to use `clangd` as its C++ 
[LSP](#lspintro) to help you identify errors as you edit the files.

Here's an example:
![Alt text: lsp error demo](lsp_error_demo.png)


LSP combined with the [completion plugin](@ref cmpintro) can help you
automatically complete words as well. Another LSP is `cmake` for editing
`CMakeLists.txt`; a python LSP will be added in the future.

Here's an example of LSP and completing a CMake variable.
![Alt text: word completion demo](lsp_cmp_demo.png)



## Git commands with Fugitive

## Telescope


## Other plugins and features that makes the world a better place

### Copying to the System Clipboard

If you're inside a Docker container and opened up a text file with neovim, and you
wish to copy some texts to paste elsewhere (say, Safari, or Slack), here's an example:

- step 1. highlight some the text in visual mode
- step 2. press \" (double quote), then `+` to select the register, and then `y` to yank.
- step 2. or, simply use the mouse, right click and select copy.

For more information, see @ref osc52intro

### File Explorer: Oil
Edit the directory (add, duplicate, delete, move) files as if it is simply a vim buffer with
[Oil](@ref oilintro)!

### Jump Around: Flash
Jump around faster with [Flash](@ref flashintro); and even faster with 
[Treesitter](@ref treesitterintro)!

