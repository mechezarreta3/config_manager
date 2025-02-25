# ~/.zshrc - Default minimal setup

# Set default path
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Enable command auto-correction
setopt CORRECT

# Enable history with timestamp
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Enable extended globbing
setopt EXTENDED_GLOB

# Enable auto-completion
autoload -Uz compinit
compinit

# Set a basic prompt
PS1='%n@%m %~ %# '

# Alias examples
alias ll='ls --color -lah'
alias ls='ls --color'
alias gs='git status'

# ZSH Plugins
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.config/zsh/zsh-auto-notify/auto-notify.plugin.zsh
source ~/.config/zsh/zsh-you-should-use/you-should-use.plugin.zsh

# history substring search options
bindkey '^[OA' history-substring-search-up
bindkey '^[OB' history-substring-search-down

eval "$(starship init zsh)"

# Personal Export Paths
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/bin/utilities
export PATH=$PATH:$HOME/bin/configs
export PATH=$PATH:$HOME/bin/sdks
export PATH=$PATH:$HOME/.local/bin

# Go Paths
export PATH=$PATH:$HOME/go
export PATH=$PATH:$HOME/go/bin

# Terminal Start ASCII
# Set text color to the approximated foam blue (256-color code 153)
echo -e "\033[38;5;211m"
cat ~/.ascii_wellackshually
echo -e "\033[0m"
