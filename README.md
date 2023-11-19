# Neovim Config

Welcome! this is meant to be a documentation for my neovim setup, config and keybindings.

## Requirements

### Github

So first things first, Github requires ssh on terminals, Here's how to set that up:

1. Generate the key, replace "YOUR_EMAIL@EXAMPLE.COM" accordingly and enter your passphrase (could be anything, this is not your github's _password_)

```bash
ssh-keygen -t rsa -b 4096 -C "YOUR_EMAIL@EXAMPLE.COM"
```

2. Copy your public key

```bash
cat ~/.ssh/id_rsa.pub ## Just copy the out put
```

Sometimes you just cant do that if you are connecting with pure ssh (no GUIs), gotcha! use something like xclip

```bash
xclip -sel clip < ~/.ssh/id_rsa.pub # sudo pacman -S xclip # (Archlinux), consult your distro's docs incase you're using another distro
```

3. Add it to your [Github SSH keys](https://github.com/settings/keys) and give it any name (e.g your machine/distro's name)
4. Finally set/force github to use ssh connections

```bash
git config --global url.ssh://git@github.com/.insteadOf https://github.com/
```

5. Set your author's settings email/name (Optional)

```bash
git config --global user.name "New Author Name"
git config --global user.email "email@address.example"
```

### Plugins

Telescope's LiveGrep tool requires [ripgrep](https://github.com/BurntSushi/ripgrep#installation), consult the docs for your distro's installation

```bash
sudo pacman -S ripgrep # (Archlinux)
```

[Lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) requires [LazyGit](https://github.com/jesseduffield/lazygit#installation), consult the docs for your distro's installation

```bash
sudo pacman -S lazygit # (Archlinux)
```

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

| Key Combination  | Action                                                                                                      | Modes |
| :--------------: | ----------------------------------------------------------------------------------------------------------- | ----- |
| &lt;leader&gt;sv | Split Vertically                                                                                            | :x:   |
| &lt;leader&gt;sh | Split Horizontally                                                                                          | :x:   |
| &lt;leader&gt;g  | Opens up [LazyGit](https://github.com/jesseduffield/lazygit/blob/master/docs/keybindings/Keybindings_en.md) | :x:   |

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
|       gtc        | Toggle line comment               |
|       gtb        | Toggle block comment              |
