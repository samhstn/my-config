set -o vi # vi in terminal

setopt auto_pushd # cd push old directory onto the directory stack
setopt pushd_ignore_dups # dont insert duplicates into the directory stack
setopt pushdminus # pushing directory aliases with minuses

export ZSH=$HOME/.my-zsh # Path to .my-zsh

source $ZSH/aliases.zsh # Aliases

source $ZSH/git.zsh # Git config display

source $ZSH/grep.zsh # Grep config

source $ZSH/history.zsh # config for my command history

source $ZSH/key-bindings.zsh # Key bindings

source $ZSH/misc.zsh # Misc

source $ZSH/termsupport.zsh # Improved terminal support support

source $ZSH/theme-and-appearance.zsh # Theme and appearance

source $ZSH/theme.zsh-theme # My theme

source $ZSH/completion.zsh # Case Insensitive Completion

source $ZSH/git-aliases.zsh # Git Aliases

source $ZSH/history-substring-search.zsh # History substring search
