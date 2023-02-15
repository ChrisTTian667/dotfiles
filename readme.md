# How to manage dotfiles

## Initial Git repository setup

1. Init the bare git repository in a "dot" folder of your $HOME
    ```
    git init --bare $HOME/.myconf
    ```

2. Define the `config` alias
    ```
    alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
    ```

3. Set the flag showUntrackedFiles to no on this specific config repository
    ```
    config config status.showUntrackedFiles no
    ```

Then any file within the home folder can be versioned with normal commands like:
    config status
    config add .vimrc
    config commit -m "Add vimrc"
    config add .config/redshift.conf
    config commit -m "Add redshift config"
    config push

No extra tooling, no symlinks, files are tracked on a version control system, you can use different branches for different computers, you can replicate you configuration easily on new installation.