alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias md='mkdir -p'
alias rd=rmdir

# List directory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

# Push and pop directories on directory stack
alias pu='pushd .'
alias po='popd'

function take() {
  mkdir -p $1
  cd $1
}

alias desk='cd ~/Desktop && ls'
alias proj='cd ~/proj && ls'
alias zrc='vim ~/.zshrc'
alias vrc='vim ~/.vimrc'
alias erc='vim ~/.eslintrc'
alias nbrk='node --debug-brk'
alias ni='node-inspector --no-preload'
alias cl='clear'
alias m='vim'
alias colours='spectrum_ls'
alias st='open -a SourceTree .'
alias za='vim ~/.my-zsh/aliases.zsh'
alias zga='vim ~/.my-zsh/git-aliases.zsh'
alias ns='npm run startmon'
alias nt='npm run testmon'
alias nw='npm run watch'
alias t='tig'
alias h='tail -12 ~/.zsh_history' # TODO: strip the date part
alias pg='postgres -D /usr/local/var/postgres'
