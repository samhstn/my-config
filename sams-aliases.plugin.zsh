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
alias nsm='n startmon'
alias rmt='rm *.temp.* && echo "removing *.temp.* files"'
alias firefox='/Applications/Firefox.app/Contents/MacOS/firefox'
alias nc='npm run coverage'
alias ntm="nodemon -x 'npm t'"

# An easier way to git clone
function gclone() {
  git clone "https://github.com/$1.git"
}

# open my zsh aliases file, with -i switch simply display all my aliases and functions
function za() {
  if [ "$1" = "i" ]
  then
    cat ~/.oh-my-zsh/plugins/sams-aliases/sams-aliases.plugin.zsh |
    egrep '^(alias|function)' | # grab only lines that start with alias or function
    awk '{print substr($0, index($0, $2))}' | # delete the first word
    awk -F'=' '{if($0 ~ /=/) {print $1} else {print $0}}' | # delete all after = in a line with =
    sed 's/()\ {//g' | # remove brackts
    tail -n +15
  else
    vim ~/.oh-my-zsh/plugins/sams-aliases/sams-aliases.plugin.zsh
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

# TODO: Exclude gitignored files

# grepe is a numbered case insensitive recursive search in current dir
function grepe() {
  grep -ri $1 . --exclude-dir={node_modules,production,coverage,.git,build,.sass-cache} --exclude=npm-debug.log |
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
  xargs -J % grep -ri % . --exclude-dir={node_modules,production,coverage,.git,build,.sass-cache} --exclude=npm.debug.log |
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

# TODO: If package is not found, look in lower dirs

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

function nodeni () {
  (
    # wait for 0.1 sec so that .nodeni.txt has been updated by last command
    sleep 0.1;
    # set CHROME_URL to be
    # output of file
    # grep filter only the line beginning with 4 spaces
    # -e to allow regex
    # -a to force read of file (since it is being created by script
    # it may not be read)
    # sed to remove all spaces
    CHROME_URL="$(
      cat ~/.nodeni.txt |
      grep -ae '^\ \ \ \ ' |
      sed 's/ //g'
    )"
    # Open chrome
    # osascript to tell chrome what location to go to
    /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome &
    osascript -e "tell application \"Google Chrome\" to open location \""$CHROME_URL"\""
  ) &
  # Since node --inspect is not stdout or stderr
  # we must read the literal terminal output with script -r
  script -r ~/.nodeni.txt node --inspect=9222 --debug-brk $1
}
