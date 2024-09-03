### github.com/tsgrissom .zshrc for macOS



### ENVIRONMENT VARIABLES

# Ensure NVM files are put in a hidden folder at $HOME
export NVM_DIR="$HOME/.nvm"
# System Path Additions
export PATH="$(brew --prefix)/opt/ruby/bin:$PATH"            # Prepend PATH with Homebrew Ruby install > macOS static Ruby
export PATH="$(brew --prefix)/lib/ruby/gems/3.3.0/bin:$PATH" # Prepend PATH with executables from Ruby Gems
# Set 1Password as the SSH Agent for oh-my-zsh
export SSH_AUTH_SOCK="$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
export ZSH="$HOME/.oh-my-zsh"



### LOADING PLUGINS + SOURCING SHELL
## Standard plugins -> $ZSH/plugins/
## Custom plugins   -> $ZSH_CUSTOM/plugins/

# oh-my-zsh plugins to load
plugins=(
  colored-man-pages
  fzf-zsh-plugin
  ssh
  thefuck
  zsh-autosuggestions
  zsh-syntax-highlighting
)
# Source oh-my-zsh
source "$ZSH/oh-my-zsh.sh"
# Source custom zsh files, such as aliases
source "$ZSH_CUSTOM/aliases.zsh"



### CONFIGURATION FOR CORE OH-MY-ZSH

# Shell Auto-Update Settings
zstyle ":omz:update" mode auto    # Update without asking
zstyle ":omz:update" frequency 3  # Check for updates after three days
# Shell Basic Theming
ZSH_THEME="alanpeabody"
PROMPT=" %F{magenta}MBP%f %~ %F{magenta}%(!.#.$)%f "



### CONFIGURATION FOR OMZ PLUGINS

# colored-man-pages
less_termcap[md]="${fg_bold[magenta]}"
less_termcap[us]="${fg_bold[cyan]}"
# fzf-zsh-plugin
export FZF_PREVIEW_ADVANCED=true # TODO: Install lesspipe.sh
export FZF_PREVIEW_WINDOW="right:65%:nohidden"
# zsh-autosuggestions 
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#949494"
export ZSH_AUTOSUGGEST_STRATEGY=(completion) # formerly =(history completion)



### LATE-LOADERS

# Sets Up Homebrew Completions
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
  compinit
fi
# DONT REORDER; Sets Up NVM, Node, and NPM + Completions
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # Load NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # Loads NVM bash completion
# Source iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# DONT REORDER; This should be loaded last
# Source Homebrew's zsh-syntax-highlighting install
source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

