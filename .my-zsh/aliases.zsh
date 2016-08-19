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
alias zga='vim ~/.my-zsh/git-aliases.zsh'
alias n='npm run'
alias lll='ls' # for typing ls with one hand
alias pg='postgres -D /usr/local/var/postgres'
alias ss='echo "sourcing zshrc"; source ~/.zshrc'
alias j='jobs'
alias nmtags='ctags -R --exclude="node_modules/*/node_modules/*" .'

# jobs in foreground
function f() {
  fg "%$1"
}

# open my zsh aliases file, with -i switch simply display all my aliases and functions
function za() {
  if [ "$1" = "i" ]
  then
    cat ~/.my-zsh/aliases.zsh |
    egrep '^(alias|function)' | # grab only lines that start with alias or function
    awk '{print substr($0, index($0, $2))}' | # delete the first word
    awk -F'=' '{if($0 ~ /=/) {print $1} else {print $0}}' | # delete all after = in a line with =
    sed 's/()\ {//g' | # remove brackts
    tail -n +15
  else
    vim ~/.my-zsh/aliases.zsh
  fi
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

# Removes the argument number from history
function hrm() {
  if [ -z "$1" ]
  then
    echo "No arugmet supplied"
  else
    cat ~/.zsh_history |
    awk '{print NR, $0}' | # Adds numbers to each line
    grep -v "^$1" > ~/.zsh_history.new
    rm ~/.zsh_history
    mv ~/.zsh_history.new ~/.zsh_history
    echo "removed line $1 from history, it will be removed on terminal restart"
  fi
}

# Numbered case insensitive recursive search in current dir
function grepe() {
  grep -ri $1 . --exclude-dir={node_modules,production,coverage,.git,build,.sass-cache} |
  awk '{print NR, $0}'
}

# Open file n from the grepe output
function vo() {
  arg=${1-1} # use arg if defined, else default to 1
  history |
  tail -n -20 |
  grep grepe |
  tail -n -1 |
  awk '{print substr($0, index($0, $3))}' | # take the grepe argument from history
  xargs -J % grep -ri % . --exclude-dir={node_modules,production,coverage,.git,build,.sass-cache} |
  head -n $arg |
  tail -n -1 |
  awk -F':' '{print $1}' | # only include text until :
  xargs -o vim
}

# Trims .zsh_history of some junk

# To check if you mind something being deleted from history
# run: grep "0;foo" ~/.zsh_history to see the instances which will be deleted

function th() {
  echo 'trimming history of commands...'
  grep -v "0;ls$" ~/.zsh_history | # all excluding lines which end in "ls"
  grep -v "0;ll$" | 
  grep -v "0;lll$" |
  grep -v "0;lsa$" |
  grep -v "0;ls " | # all excluding lines witch include "ls "
  grep -v "0;cd$" |
  grep -v "0;cd " |
  grep -v "0;ls" |
  grep -v "0;m " |
  grep -v "0;vim " |
  grep -v "0;za$" |
  grep -v "0;gst$" |
  grep -v "0;gaa" |
  grep -v "0;ggpush" |
  grep -v "0;history" |
  grep -v "0;h$" |
  grep -v "0;h " |
  grep -v "0;grepe " |
  grep -v "0;vo " |
  grep -v "0;j " |
  grep -v "0;fg " |
  grep -v "0;\.\." |
  tail -r | # reversing order of history
  awk -F';' '!seen[$2]++' | # removing duplicates after ;
  tail -r > ~/.zsh_history.new # reversing and redirecting into new zsh_history
  diff ~/.zsh_history.new ~/.zsh_history | # showing the differences in the file
  egrep '^>' |
  awk -F ';' '{print substr($0, index($0, $2))}'
  rm ~/.zsh_history
  mv ~/.zsh_history.new ~/.zsh_history
  echo '...trimmed history'
}

# TODO: If package is not found, look in lower dirs
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

# FYI: awk '{print substr($1, 1, length($1)-1)}' substring of 1st col excluding last character
