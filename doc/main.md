If you've used Vim before, I hope you will love this Neovim experience.

# Introduction

[TOC]
## LSP and code completion

Since we mainly use C++, our Neovim has been configured to use `clangd` as its
C++ [LSP](#lspintro) to help you identify errors as you edit the files.

Here's an example:
![Alt text: lsp error demo](lsp_error_demo.png)


LSP combined with the [completion plugin](@ref cmpintro) can help you
automatically complete words as well. Here's an example:
![Alt text: word completion demo](lsp_cmp_demo.png)


## Git commands with Fugitive

In Normal mode, press `spacebar` (this is the <Leader> key), followed by `g`, and then `i`,
A [Fugitive](@ref fugitiveintro) buffer will show up:
![Alt text: Fugitive Git Demo](git_demo.png)
You can stage/unstage a change with `-` (minus sign).
you can exit this temporary buffer with `gq`.

To commit the staged changes, press the leader key, then `c`, and `m`.
Once again a buffer with pop up for you to edit the commit message.
Save and quit with the usual `:wq`.

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

