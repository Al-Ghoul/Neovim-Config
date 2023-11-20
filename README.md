Personal dotfile

# Installation

I personally use stow to install these (console the [docs](https://www.gnu.org/software/stow/manual/html_node/) if you're not familiar with it), I know there are some other ways to install them, you can even copy them manually
<br/>I use Archlinux, if you're using the same distro you can check the docs for other [Dot files managers](https://wiki.archlinux.org/title/Dotfiles)

```bash
sudo pacman -S stow # Archlinux
```

clone this repo then

```bash
cd dotfiles
stow <package name (folder name)> or ./* (to get everything)
```
