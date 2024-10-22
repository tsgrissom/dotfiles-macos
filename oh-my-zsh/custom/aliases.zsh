# github.com/tsgrissom/dotfiles
# Oh My Zsh - Command Aliases for macOS


### ALIASES

## git
alias ga="  git add"
alias gc="  git commit -m"
alias gd="  git diff"
alias gdn=" git diff --name-only"
alias gp="  git push"
alias gs="  git status"
alias gl="  git log --oneline --decorate --color"

## Neovim
alias cvi="nvim $HOME/.config/nvim/init.lua"
alias vi=" nvim"

## Oh My Zsh
alias as=" glow $ZSH_CUSTOM/aliases.zsh" # Display zsh aliases
alias cas="nvim $ZSH_CUSTOM/aliases.zsh" # Configure zsh aliases file
alias csh="nvim $HOME/.zshrc" # Configure .zshrc
alias rsh="source $HOME/.zshrc" # Refreshes shell with latest .zshrc

## tmux
alias ctx=" nvim $HOME/.tmux.conf" # Configure .tmux.conf
alias rtx=" tmux source-file $HOME/.tmux.conf" # Refresh tmux with latest .tmux.conf
alias tm="  tmux"
alias tma=" tmux attach"
alias tmd=" tmux detach"
alias tmkp="tmux kill-pane"
alias tmks="tmux kill-server"


### MISCELLANEOUS

## Mistake Catchers
alias cls="clear"
alias dir="eza"

## Helper Commands
alias ports=" nmap -sP 10.0.0.0/24" # Scan subnet for IPs in use
alias size="  du -sh" # TODO Remove in favor of learning du
alias update="brew update && brew upgrade && brew cleanup" # Update brew packages quicker

## Replace 'ls'
alias ls=" eza"
alias lt=" eza --tree"
alias lg=" eza --git"
alias ll=" eza -la"
