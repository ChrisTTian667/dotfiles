alias ip="ifconfig | grep inet"
alias ls="exa --icons --git --group-directories-first -a"
alias ll="exa --icons --git --group-directories-first -la"
alias g="goto"
alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}"
alias os="open *.sln"
alias x="exit"
alias c="clear"
alias o="open ."
alias ap="ansible-playbook"

alias update='softwareupdate -l'
alias brewup='brew update && brew upgrade && brew cleanup'
alias reload='source ~/.zshrc'
alias topcommands='history | awk "{CMD[\$2]++;count++;}END { for (a in CMD)print CMD[a] \" \" CMD[a]/count*100 \"% \" a;}" | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n10'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# tools under development
alias mr-release="dotnet /Users/chris/Source/mr-release/src/MrRelease/bin/Debug/net7.0/MrRelease.dll"
alias mrs-pr="dotnet /Users/chris/Source/mrs-pullrequest/src/MrsPullRequest/bin/Debug/net7.0/MrsPullRequest.dll"
alias knx="dotnet /Users/chris/Source/knx-dotnet/Knx.Cli/bin/Debug/net7.0/Knx.Cli.dll"
alias adva="/Users/chris/Source/advastore/advastore.cli/src/adva-cli"

# git alias for dotfiles repo
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

# mac OS shortcuts
alias code="open -a 'Visual Studio Code'"