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
config add .zsh
config commit -m "Add zsh config"
config add .config/starship.toml
config commit -m "Add starship prompt config"
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

## Referral Link

If you're a macOS user like me, I highly recommend trying out [Warp Terminal](https://app.warp.dev/referral/8NG3R) instead of iTerm2 or the built-in terminal app. In my opinion, [Warp](https://app.warp.dev/referral/8NG3R), paired with the sleek [Starship prompt](https://starship.rs/), provides a truly transformative experience, especially for repetitive tasks and AI integration. If you decide to give it a go, using my referral link would greatly support me on my journey to reaching 100 referrals and earning a free Warp Hoodie to become a more stylish developer. :) 