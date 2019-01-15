alias desk='cd ~/Desktop && ls'
alias doc='cd ~/Documents && ls'
alias down='cd ~/Downloads && ls'
alias proj='cd ~/proj && ls'
alias zrc='mvim -v ~/.zshrc'
alias vrc='mvim -v ~/.vimrc'
alias cl='clear'
alias colours='spectrum_ls'
alias n='npm run'
alias lll='ls' # for typing ls with one hand
alias pg='postgres -D /usr/local/var/postgres'
alias ss='echo "sourcing zshrc"; source ~/.zshrc'
alias ns='npm start'
alias nt='npm t'
alias nw='npm run watch'
alias za='mvim -v ~/.oh-my-zsh/plugins/sams-config/sams-config.plugin.zsh'
alias ze='mvim -v ~/.zsh_envs'
alias m='mvim -v'
alias ms='mix phx.server'
alias mpr='mix phx.routes'
alias python=python3
alias pip=pip3
alias dj='python manage.py'
alias ggpuhs=ggpush
# add everything, amend last commit and force push.
# consider commenting this command if it's too destructive, but I like it.
alias gcc!='git add --all && git commit -v --amend --no-edit && git push origin $(git_current_branch) -f'

# An easier way to git clone
function gclone() {
  git clone "https://github.com/$1.git"
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
  xargs -o mvim -v
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

# `s` shows all the sripts in a package.json, s i shows the scripts and their definition
function s() {
  if [ "$1" = "i" ]; then
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

function addtopath() {
  if [[ $PATH != *"$1"* ]]; then
    PATH=$PATH:$1
  fi
}

# A place for all our environment variables
if [ -f $HOME/.zsh_envs ]; then
  source $HOME/.zsh_envs
fi
