alias ip="ifconfig | grep inet"
alias ls="exa --icons --git --group-directories-first -a"
alias ll="exa --icons --git --group-directories-first -la"
alias g="goto"
alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}"
alias os="open *.sln"
alias x="exit"
alias c="clear"
alias o="open ."

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# tools under development
alias mr-release="dotnet /Users/chris/Source/mr-release/src/MrRelease/bin/Debug/net7.0/MrRelease.dll"
alias mrs-pr="dotnet /Users/chris/Source/mrs-pullrequest/src/MrsPullRequest/bin/Debug/net7.0/MrsPullRequest.dll"

# git alias for dotfiles repo
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

# mac OS shortcuts
alias code="open -a 'Visual Studio Code'"