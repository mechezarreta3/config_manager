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
alias ll='ls -lah'
alias gs='git status'

# ZSH Plugins
source ~/personal/git/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/personal/git/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/personal/git/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/personal/git/.zsh/zsh-auto-notify/auto-notify.plugin.zsh
source ~/personal/git/.zsh/zsh-you-should-use/you-should-use.plugin.zsh

# history substring search options
bindkey '^[OA' history-substring-search-up
bindkey '^[OB' history-substring-search-down

eval "$(starship init zsh)"
