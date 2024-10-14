If you've used Vim before, I hope you will love this Neovim experience.

# Demo

## LSP and code completion

Since we mainly use C++, our Neovim has been configured to use `clangd` as its
C++ [LSP](#lspintro) to help you identify errors as you edit the files.

Here's an example:
![Alt text: lsp error demo](lsp_error_demo.png)


LSP combined with the [completion plugin](@ref cmpintro) can help you
automatically complete words as well. Here's an example:
![Alt text: word completion demo](lsp_cmp_demo.png)

[TOC]
## Git commands with Fugitive

In Normal mode, press `spacebar` (this is our chosen "leader key"), followed by `g`, and then `i`,
the [Fugitive](@ref fugitiveintro) buffer will show up:

![Git stage demo](git_stage_demo.png)

You can stage/unstage a change with `-` (minus sign).

To commit the staged changes, press the leader key, then `c`, and `m`.
Once again a buffer with pop up for you to edit the commit message.
Save and quit with the usual `:wq`.

![Git commit demo](git_commit_demo.png)

You can push the commit by pressing `s` (The commit under your cursor will be pushed)
![Git push demo](git_push_demo.png)

you can exit the Fugitive buffer with `gq`.

You can also view the git log through the command (still inside Neovim)
```:Git log```
![Git log demo](git_log_demo.png)
\note: 
capital G in the command `:Git log`!


## Copying to the System Clipboard

If you're inside a Docker container and open up a text file with neovim, and
you wish to copy some texts to paste elsewhere (say, Safari, or Slack), here's
how you can do it.

With cursor on line 69,
We could yank line 69 and one line above with

![osc52 yank demo](yank_demo.png)

which yanks
```
# lsd for prettier ls
RUN echo alias ls=lsd >> /root/.bashrc
```

**Explanation**:
The "+" register has been configured to be used with osc52.
In the above, we selected the register with \" (shift and ') and `+` (shift and =), 
and start yanking with `y` as we normally do in Vim.

Alternatively, you can simply highlight the text and use the mouse (right click and select copy).
For more information, see @ref osc52intro

## File Explorer: Oil
With [Oil](@ref oilintro), one can dit the directory (add, duplicate, delete,
move files) as if the file tree is simply a vim buffer!

![Alt text: oil demo](oil_demo.png)

When you make changes and save with `:w`, a prompt will pop up to ask you to save the changes.
You can exit this buffer with `<esc>`


## Jump Around: Flash and Treesitter
Jump around fast with [Flash](@ref flashintro); and even faster with 
[Treesitter](@ref treesitterintro)!


## Telescope
find files, buffers, search texts with live grep, and more!
\warning
**to be added**
