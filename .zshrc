[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/chatgpt.zsh ]] && source ~/.zsh/chatgpt.zsh
[[ -f ~/.zsh/adva-cli.zsh ]] && source ~/.zsh/adva-cli.zsh

autoload -Uz compinit
compinit

export USERPROFILE=$HOME

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export LANG=en_US.UTF-8
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:/Users/chris/.nvm/versions/node/v20.9.0/bin"

eval "$(pyenv init -)"

eval "$(starship init zsh)"
. /opt/homebrew/etc/profile.d/z.sh