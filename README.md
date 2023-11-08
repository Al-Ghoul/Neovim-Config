# Neovim Config

Welcome! this is meant to be a documentation for my neovim setup, config and keybindings.

## Basics

Wherever the keys in the table below are mentioned, they are replaced with their bindings accordingly.

| Key            | Binding |
| -------------- | ------- |
| &lt;leader&gt; | Space   |

## Navigation

The following keys are bound to some navigation moves

| Key Combination  | Action                               |
| :--------------: | ------------------------------------ |
| &lt;leader&gt;bn | Next buffer                          |
| &lt;leader&gt;bp | Previous buffer                      |
| &lt;leader&gt;m  | Nvim-Tree Focus                      |
| &lt;leader&gt;e  | Nvim-Tree Toggle (Hide/Show)         |
|      Ctrl-h      | Navigate Left in (Pane/Window/Tmux)  |
|      Ctrl-l      | Navigate Right in (Pane/Window/Tmux) |
|      Ctrl-k      | Navigate Up in (Pane/Window/Tmux)    |
|      Ctrl-j      | Navigate Down in (Pane/Window/Tmux)  |
| &lt;leader&gt;fd | Go to definition                     |
| &lt;leader&gt;gd | Peek definition                      |
| &lt;leader&gt;gD | Go to definition                     |
| &lt;leader&gt;pd | Go to Previous diagnostics in buffer |
| &lt;leader&gt;nd | Go to Next diagnostics in buffer     |
| &lt;leader&gt;fk | Shows Key maps                       |
| &lt;leader&gt;fh | Shows Help tags                      |
| &lt;leader&gt;ff | Shows file search                    |
| &lt;leader&gt;fg | Look up in files with grep           |
| &lt;leader&gt;fb | Look up in buffers                   |

## Windows Management

The following keys are bound to some windows management actions

| Key Combination  | Action                                                                                                      | Modes         |
| :--------------: | ----------------------------------------------------------------------------------------------------------- | ------------- |
| &lt;leader&gt;sv | Split Vertically                                                                                            | :x:           |
| &lt;leader&gt;sh | Split Horizontally                                                                                          | :x:           |
| &lt;leader&gt;g  | Opens up [LazyGit](https://github.com/jesseduffield/lazygit/blob/master/docs/keybindings/Keybindings_en.md) | :x:           |
|      Ctrl-/      | Toggle Comment (Block/Line)                                                                                 | Normal/Visual |

## Code Actions

The following keys are bound to some code actions

| Key Combination  | Action                            |
| :--------------: | --------------------------------- |
| &lt;leader&gt;ca | See available code actions        |
| &lt;leader&gt;rn | Smart rename                      |
| &lt;leader&gt;D  | Show line diagnostics on line     |
| &lt;leader&gt;d  | Show line diagnostics on cursor   |
|     Shift-k      | Show Documentation on cursor      |
|    Ctrl-Space    | Show auto complete on cursor      |
|      Ctrl-e      | Close auto complete               |
|      Ctrl-k      | Previous auto complete item       |
|      Ctrl-j      | Next auto complete item           |
|      Ctrl-b      | Scroll Down 4 auto complete items |
|      Ctrl-f      | Scroll Up 4 auto complete items   |
