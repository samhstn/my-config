alias desk='cd ~/Desktop && ls'
alias proj='cd ~/proj && ls'
alias prj='cd ~/proj && ls'
alias zrc='vim ~/.zshrc'
alias vrc='vim ~/.vimrc'
alias erc='vim ~/.eslintrc'
alias nbrk='node --debug-brk'
alias ni='node-inspector --no-preload'
alias cl='clear'
alias m='vim'
alias colours='spectrum_ls'
alias st='open -a SourceTree .'
alias n='npm run'
alias lll='ls' # for typing ls with one hand
alias pg='postgres -D /usr/local/var/postgres'
alias ss='echo "sourcing zshrc"; source ~/.zshrc'
alias ns='npm start'
alias nt='npm t'
alias nw='npm run watch'
alias nsm='nodemon -x "npm start"'
alias rmt='rm *.temp.* && echo "removing *.temp.* files"'
alias firefox='/Applications/Firefox.app/Contents/MacOS/firefox'
alias nc='npm run coverage'
alias ntm="nodemon -x 'npm t'"
alias opencoverage='open coverage/lcov-report/index.html'
alias za='vim ~/.oh-my-zsh/plugins/sams-aliases/sams-aliases.plugin.zsh'
alias ric='cd ~/proj/crm-base-generic/'
alias le='cd ~/proj/le'
alias doc='cd ~/Documents'

# An easier way to git clone
function gclone() {
  git clone "https://github.com/$1.git"
}

# lists off last 20 commands from history or if an arg is passed finds prev examples of those
function h() {
  if [ $# -eq 0 ]
  then
    history | tail -20
  else
    cat ~/.zsh_history |
    awk -F';' '{print $2}' |
    awk '{print NR, $0}' |
    GREP_COLOR="1;36" grep $1
  fi
}

# grepe is a numbered case insensitive recursive search in current dir
function grepe() {
  grep -ri --exclude-dir=node_modules $1 . |
  egrep -v '/.{120}/' |
  awk '{print NR, $0}'
}

# vo n opens a file n from the last grepe output that has been run within the last 20 commands
function vo() {
  arg=${1-1} # use arg if defined, else default to 1
  history |
  tail -n -20 |
  grep grepe |
  tail -n -1 |
  awk '{print substr($0, index($0, $3))}' | # take the grepe argument from history
  xargs -J % grep -ri --exclude-dir=node_modules % . |
  egrep -v '/.{120}/' |
  head -n $arg |
  tail -n -1 |
  awk -F':' '{print $1}' | # only include text until :
  xargs -o vim
}

# mr opens the last vim file I had open
function mr() {
  history |
  awk '{print substr($0, index($0, $2))}' | # prints all the arguments excluding the 1st
  egrep '^m\ ' | # filter in lines beginning with m<space>
  awk '{print $2}' |
  tail -n -1 |
  xargs -o vim
}

# ml runs the last command, replacing the first argument with vim ...
function ml() {
  history |
  tail -n -1 |
  awk '{print substr($0, index($0, $2))}' |
  awk '{print $2}' |
  xargs -o vim
}

# cdl runs the last command, replacing the first argument with cd ...
function cdl() {
  cdpath="$(history |
  tail -n -1 |
  awk '{print substr($0, index($0, $2))}' |
  awk '{print $2}')"
  cd $cdpath
}

# s shows all the sripts in a package.json, s i shows the scripts and their definition
function s() {
  if [ "$1" = "i" ]
  then
    cat ./package.json |
    awk 'BEGIN{found=0} /"scripts":/{found=1} {if (found) print }' |
    tail -n +2 | # remove the '"scripts": {' line
    awk 'BEGIN{found=1} /\},/{found=0} {if (found) print }'
  else
    cat ./package.json |
    awk 'BEGIN{found=0} /"scripts":/{found=1} {if (found) print }' |
    tail -n +2 | # remove the '"scripts": {' line
    awk 'BEGIN{found=1} /\},/{found=0} {if (found) print }' |
    awk -F'":' '{print $1}' |
    sed 's/"//g'
  fi
}
