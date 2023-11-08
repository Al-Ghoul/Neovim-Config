# Neovim Config
Welcome! this is meant to be a documentation for my neovim setup, config and keybindings.

## Basics
Wherever the keys in the table below are mentioned, they are replaced with their bindings accordingly.

| Key      | Binding |
| -------- | ------- |
| <leader> | Space   |

## Navigation
The following keys are bound to some navigation moves

| Key Combination | Action                               |
| :-------------: | ------------------------------------ |
|   <leader>bn    | Next buffer                          |
|   <leader>bp    | Previous buffer                      |
|    <leader>m    | Nvim-Tree Focus                      |
|    <leader>e    | Nvim-Tree Toggle (Hide/Show)         |
|     Ctrl-h      | Navigate Left in (Pane/Window/Tmux)  |
|     Ctrl-l      | Navigate Right in (Pane/Window/Tmux) |
|     Ctrl-k      | Navigate Up in (Pane/Window/Tmux)    |
|     Ctrl-j      | Navigate Down in (Pane/Window/Tmux)  |
|   <leader>fd    | Go to definition                     |
|   <leader>gd    | Peek definition                      |
|   <leader>gD    | Go to definition                     |
|   <leader>pd    | Go to Previous diagnostics in buffer |
|   <leader>nd    | Go to Next diagnostics in buffer     |
|  <leader>fk     | Shows Key maps
| <leader>fh   | Shows Help tags
| <leader>ff | Shows file search
| <leader>fg | Look up in files with grep
| <leader>fb | Look up in buffers

## Windows Management
The following keys are bound to some windows management actions

| Key Combination | Action                                                                                                      | Modes         |
| :-------------: | ----------------------------------------------------------------------------------------------------------- | ------------- |
|   <leader>sv    | Split Vertically                                                                                            | :x:           |
|   <leader>sh    | Split Horizontally                                                                                          | :x:           |
|    <leader>g    | Opens up [LazyGit](https://github.com/jesseduffield/lazygit/blob/master/docs/keybindings/Keybindings_en.md) | :x:           |
|     Ctrl-/      | Toggle Comment (Block/Line)                                                                                 | Normal/Visual |

## Code Actions
The following keys are bound to some code actions

| Key Combination | Action                            |
| :-------------: | --------------------------------- |
|   <leader>ca    | See available code actions        |
|   <leader>rn    | Smart rename                      |
|    <leader>D    | Show line diagnostics on line     |
|    <leader>d    | Show line diagnostics on cursor   |
|     Shift-k     | Show Documentation on cursor      |
|   Ctrl-Space    | Show auto complete on cursor      |
|     Ctrl-e      | Close auto complete               |
|     Ctrl-k      | Previous auto complete item       |
|     Ctrl-j      | Next auto complete item           |
|     Ctrl-b      | Scroll Down 4 auto complete items |
|     Ctrl-f      | Scroll Up 4 auto complete items   |

