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

## Homebrew
alias br="  brew"
alias brup="brew update && brew upgrade && brew cleanup" # Update brew packages quicker

## Neovim
alias cvi="nvim $HOME/.config/nvim/init.lua"
alias vi=" nvim"

## Oh My Zsh
alias as=" glow $ZSH_CUSTOM/aliases.zsh -l md" 
alias cas="nvim $ZSH_CUSTOM/aliases.zsh"
alias csh="nvim $HOME/.zshrc" 
alias rsh="source $HOME/.zshrc"

## tmux
alias ctx=" nvim $HOME/.tmux.conf"
alias rtx=" tmux source-file $HOME/.tmux.conf" 
alias tx="  tmux"
alias txa=" tmux attach"
alias txd=" tmux detach"
alias txkp="tmux kill-pane"
alias txks="tmux kill-server"


### MISCELLANEOUS

## Mistake Catchers
alias cls="clear"
alias dir="eza"

## Helper Commands
alias mcup="  cd $HOME/Local/Servers/1.21.1 && ./run.command"
alias ports=" nmap -sP 10.0.0.0/24" # Scan subnet for IPs in use
alias size="  du -sh" # TODO Remove in favor of learning du

## Replace "ls" with modern "eza"
alias ls="eza"
alias lt="eza --tree"
alias lg="eza --git"
alias ll="eza -la"
alias la="eza -a"
