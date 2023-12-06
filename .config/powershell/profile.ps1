$(/opt/homebrew/bin/brew shellenv) | Invoke-Expression

# Basic Aliases
function ll { Get-ChildItem -Force }

function grep { Select-String -Path * -Exclude .bzr, CVS, .git, .hg, .svn -Pattern $args }
function os { Start-Process *.sln }
function x { exit }

# Directory Navigation
function .. { Set-Location ../.. }
function ... { Set-Location ../.. }
function .... { Set-Location ../../.. }
function ..... { Set-Location ../../../.. }

# Git Alias for Dotfiles Repo
function config { & git --git-dir=$HOME/.myconf/ --work-tree=$HOME @args }