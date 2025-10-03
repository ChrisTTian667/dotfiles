alias ip="ifconfig | grep inet"
alias ls="lsd -a --group-directories-first"
alias ll="lsd -la --group-directories-first --blocks 'permission,user,group,size,name,git'"
alias g="goto"
alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}"
alias os="open *.sln"
alias x="exit"
alias c="clear"
alias o="open ."
alias ap="ansible-playbook"
alias lgit="lazygit"
alias ldocker="lazydocker"
alias vlc="open -a VLC"

alias k="kubectl"
alias ka="kubectl apply -f"
alias kc="kubectl config get-contexts -o name | fzf | xargs kubectl config use-context"
alias kn='kubectl get namespaces --no-headers -o custom-columns=:metadata.name | fzf | xargs -I {} kubectl config set-context --current --namespace={}'
alias kgp="kubectl get pods -o wide"
alias kgd="kubectl get deployments -o wide"
alias kgn="kubectl get namespaces -o wide"
alias kgs="kubectl get svc -o wide"
alias kdp="kubectl get pods --no-headers -o custom-columns=:metadata.name | fzf | xargs -I {} kubectl describe pod {}"
alias kds="kubectl get svc --no-headers -o custom-columns=:metadata.name | fzf | xargs -I {} kubectl describe svc {}"
alias kl="kubectl logs -f"
alias kx="kubectl exec -it"

alias update='softwareupdate -l'
alias brewup='brew update && brew upgrade && brew cleanup'
alias brewinfo='brew info $(brew list | fzf)'

alias reload='source ~/.zshrc'
alias topcommands='history | awk "{CMD[\$2]++;count++;}END { for (a in CMD)print CMD[a] \" \" CMD[a]/count*100 \"% \" a;}" | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n10'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

copy() {
  if [[ -f "$1" ]]; then
    cat "$1" | pbcopy
    echo "📋 '$1' wurde in die Zwischenablage kopiert"
  else
    echo "❌ Datei '$1' nicht gefunden"
  fi
}

alias paste="pbpaste"

# tools under development
alias mr-release="dotnet /Users/chris/Source/mr-release/src/MrRelease/bin/Debug/net7.0/MrRelease.dll"
alias mrs-pr="dotnet /Users/chris/Source/mrs-pullrequest/src/MrsPullRequest/bin/Debug/net7.0/MrsPullRequest.dll"
alias knx="dotnet /Users/chris/Source/knx-dotnet/Knx.Cli/bin/Debug/net7.0/Knx.Cli.dll"

# git alias for dotfiles repo
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

# mac OS shortcuts
alias code="open -a 'Visual Studio Code'"