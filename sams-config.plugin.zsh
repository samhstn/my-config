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
  git grep --no-index --exclude-standard $1 | # grep ignoring all files in .gitignore
  awk '{print NR, $0}' # output of above command with line numbers
}

# grepeo opens file of last grepe output
# grepeo n opens specific file of grepe output
#
# Example:
#
# $ grepe hello
# 1 index.html:<div>Hello World</div>
# 2 style.css:.hello {
#
# $ grepeo # opens index.html in vim
# $ grepeo 1 # opens index.html
# $ grepeo 2 # opens style.css
function grepeo() {
  arg=${1-1} # use arg if defined, else default to 1

  last_grepe=$(
    fc -ln | # -l outputs history, -n suppressses numbers
    egrep '^grepe' | # filter grepe commands
    tail -1 | # take the last grepe command
    sed 's/^grepe //'
  )

  grepe_file=$(
    git grep --no-index --exclude-standard $last_grepe | # grep with ignoring all files in .gitignore
    sed -n "$arg p" | # take only $arg line
    sed 's/:.*//' # remove everything after file name
  )

  m $grepe_file
}

# mr opens the last vim file I had open
function mr() {
  last_file=$(
    fc -ln | # -l outputs history, -n suppressses numbers
    egrep '^m\ ' | # filter lines beginning with 'm '
    sed 's/^m //g' | # remove prepending 'm '
    tail -1 # take the last value
  )

  m $last_file
}

# ml runs the last command, replacing the first argument with vim
function ml() {
  trailing_args_of_last_command=$(
    fc -ln -1 | # take last command from history
    sed -E 's/[^[:space:]]+[[:space:]]//' # remove first word (`echo hello world` -> `hello world`)
  )

  m $trailing_args_of_last_command
}

# `$ s` shows all the sripts in your package.json
function s() {
  node -e "console.log(require('./package.json').scripts);"
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
