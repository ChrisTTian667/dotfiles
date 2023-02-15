# How to manage dotfiles

## Initial Git repository setup

1. Init the bare git repository in a "dot" folder of your $HOME
```bash
git init --bare $HOME/.myconf
```

2. Define the `config` alias
```bash
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
```

3. Set the flag showUntrackedFiles to no on this specific config repository
```bash
config config status.showUntrackedFiles no
```

Then any file within the home folder can be versioned with normal commands like:
```bash
config status
config add .vimrc
config commit -m "Add vimrc"
config add .config/redshift.conf
config commit -m "Add redshift config"
config push
```
No extra tooling, no symlinks, files are tracked on a version control system, you can use different branches for different computers, you can replicate you configuration easily on new installation.

### Add a remote repository (e.g. GitHub)
```bash
config remote add origin https://github.com/ChrisTTian667/dotfiles.git

config push -u origin main
```

## Replicate your configuration on a new machine
Replicate your home directory on a new machine with an *empty* user directory using the following command:
```bash
git clone --separate-git-dir=~/.myconf https://github.com/ChrisTTian667/dotfiles.git ~
```

## Replicate your configuration on a used machine
If the home directory is not empty clone the repositories working directory into a temporary directory first and then delete that directory.

```bash
git clone --separate-git-dir=$HOME/.myconf https://github.com/ChrisTTian667/dotfiles.git $HOME/myconf-tmp

cp ~/myconf-tmp/.gitmodules ~  # If you use Git submodules

rm -r ~/myconf-tmp/

alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
```
and then proceed as before.