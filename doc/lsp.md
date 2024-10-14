# Language Server Protocol {#lspintro}
In addition to `clangd` for C++ development, currently our Docker image also comes with
the `cmake-lanuage-server` to edit, for instance, `CMakeLists.txt`.
A python LSP will be added in the future.

You can see that in our [Dockerfile](https://github.com/PUEOCollaboration/pueoBuilder/blob/main/Dockerfile),
these two servers have already been installed via `dnf install clang-tools-extra` and
`pip install cmake-language-server`.

\warning
**to be completed**

