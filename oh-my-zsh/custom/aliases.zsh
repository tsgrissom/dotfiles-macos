### github.com/tsgrissom oh-my-zsh aliases for macOS

alias desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'
alias projects='cd ~/Local/Projects/Code'

alias as="glow $ZSH_CUSTOM/aliases.zsh"
alias cas="nvim $ZSH_CUSTOM/aliases.zsh"
alias cvi="nvim ~/.config/nvim/init.lua"
alias ctx="nvim ~/.tmux.conf"
alias csh="nvim ~/.zshrc"
alias rtx="tmux source-file ~/.tmux.conf"
alias rsh="source ~/.zshrc"
alias update="brew update && brew upgrade && brew cleanup"

alias vim="nvim"
alias vi="nvim"

alias dir='eza'
alias ls='eza'
alias lt='eza --tree'
alias lg='eza --git'
alias ll='eza -la'

alias ga='git add'
alias gc='git commit -m'
alias gd='git diff'
alias gdno='git diff --name-only'
alias gp='git push'
alias gs='git status'
alias gl='git log --oneline --decorate --color'

alias tm='tmux'
alias attach='tmux attach'
alias detach='tmux detach'
alias tmkp="tmux kill-pane"
alias tmks="tmux kill-server"

alias rm='rm -i'

alias br="brew"
alias cls="clear"
alias size='du -sh'
alias rbw='lolcat'
alias ports='nmap -sP 10.0.0.0/24'
