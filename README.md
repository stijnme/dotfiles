# dotfiles
Hidden config files

# Setup
Source: [Dotfiles: Best Way to Store in a Bare Git Repository](https://www.atlassian.com/git/tutorials/dotfiles)
> The technique consists in storing a Git bare repository in a "side" folder (like $HOME/.cfg or $HOME/.myconfig) using a specially crafted alias so that commands are run against that repository and not the usual .git local folder, which would interfere with any other Git repositories around.


Create bare repo + setup `dotconfig` alias.
```bash
git init --bare $HOME/.cfg
alias dotconfig='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
dotconfig config --local status.showUntrackedFiles no
echo "alias dotconfig='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```

From that point, use the `dotconfig` alias as the `git` command:

```bash
dotconfig status
dotconfig add .vimrc
dotconfig commit -m "Add vimrc"
dotconfig add .bashrc
dotconfig commit -m "Add bashrc"
dotconfig push
```

# Restore
## dotconfig command
OSX uses by default zsh, but `.zshrc` contains:
```
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```
Hence, added to `.bash_aliases`:
```
alias dotconfig='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
Source the configuration again:
```
source ~/.zshrc
```

## Clone
Clone this repo into a bare version:
```
git clone --bare git@github.com:stijnme/dotfiles.git $HOME/.cfg
```

## Checkout
Checkout the bare repo into the current "workdir":
```
cd ~
dotconfig checkout
dotconfig config --local status.showUntrackedFiles no
```


# nvim
## Prerequisite
For `nvimtree` and `nvim-web-devicons` a nerdfont is required (has extra icons included):
[Nerdfonts download](https://www.nerdfonts.com/font-downloads)


# Credits
## nvim
`nvim` config heavily inspired by [Josean](https://github.com/josean-dev/dev-environment-files)
