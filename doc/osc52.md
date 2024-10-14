# Clipboard Provider: OSC52 {#osc52intro}

Turns out, copying texts from a vim buffer when you're inside a Docker container is a non-trivial
task! Fortunately, Neovim now has [_native support_](https://github.com/ojroques/nvim-osc52)
of OSC-52 .

This is implemented in @ref options.lua
(type `:h clipboard` and look for `osc52` for more information).

## Example usage

The "+" register is configured to be used with osc52.
Simply select the register with \" (shift + ') and `+` (shift + =), 
and start yanking with `y` as you normally do in Vim.

For instance, with cursor on line 69,
![Alt text: osc52 yank demo](yank_demo.png)

this would yank the following:
```
# lsd for prettier ls
RUN echo alias ls=lsd >> /root/.bashrc
```


