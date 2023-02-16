alias ip="ifconfig | grep inet"
alias ls="exa --icons --group-directories-first -a"
alias ll="exa --icons --group-directories-first -la"
alias g="goto"
alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}"
alias os="open *.sln"
alias x="exit"
alias c="clear"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# git alias for dotfiles repo
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

# mac OS shortcuts
alias code="open -a 'Visual Studio Code'"