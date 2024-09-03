### github.com/tsgrissom oh-my-zsh aliases for macOS

# Shortcuts
alias desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'
alias projects='cd ~/Local/Projects/Code'

# Update/Configuration Helpers
# alias aliases='cat $ZSH_CUSTOM/aliases.zsh | grep -v "alias aliases" | grep -F -e "alias " -e "# " --color=never | sed "s/alias /- /g" | sed "s/#/\n#/g"'
alias as="glow $ZSH_CUSTOM/aliases.zsh"
alias cas="nvim $ZSH_CUSTOM/aliases.zsh"
alias cvi="nvim ~/.config/nvim/init.lua"
alias ctx="nvim ~/.tmux.conf"
alias csh="nvim ~/.zshrc"
alias rtx="tmux source-file ~/.tmux.conf"
alias rsh="source ~/.zshrc"
alias update="brew update && brew upgrade && brew cleanup"

# Vim Command 
alias vim="nvim"
alias vi="nvim"

# Substitute eza for Unix ls
alias dir='eza'
alias lt='eza --tree'
alias lg='eza --git'
alias ll='ls -la'

# Git 
alias ga='git add'
alias gc='git commit -m'
alias gd='git diff'
alias gdno='git diff --name-only'
alias gp='git push'
alias gs='git status'
alias gl='git log --oneline --decorate --color'

# tmux 
alias tm='tmux'
alias attach='tmux attach'
alias detach='tmux detach'
alias tmkp="tmux kill-pane"
alias tmks="tmux kill-server"

# Destructive Operations 
alias rm='rm -i'

# Miscellaneous
alias cls="clear"
alias size='du -sh'
alias rbw='lolcat'

# Disabled Command Aliases
# alias mkdirs='mkdir -pv' : Create directory and parents as needed
# alias myip="curl ipinfo.io/ip"
# alias python="python3"
