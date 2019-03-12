alias proj='cd $HOME/proj && ls'
alias zrc='mvim -v $HOME/.zshrc'
alias vrc='mvim -v $HOME/.vimrc'
alias n='npm run'
alias pg='postgres -D /usr/local/var/postgres'
alias ss='echo "sourcing zshrc"; source $HOME/.zshrc'
alias za='mvim -v $HOME/.oh-my-zsh/plugins/sams-config/sams-config.plugin.zsh'
alias ze='mvim -v $HOME/.zsh_envs'
alias m='mvim -v'
alias python=python3
alias pip=pip3
alias dj='python manage.py'
alias ggpuhs=ggpush
# add everything, amend last commit and force push.
# consider commenting this command if it's too destructive, but I like it.
alias gcc!='git add --all && git commit -v --amend --no-edit && git push origin $(git_current_branch) -f'
alias myip='ifconfig | grep "inet" | grep -v "127.0.0.1" | awk "{print \$2}"'
# show all the sripts in your package.json
alias s='node -e "console.log(require(\"./package.json\").scripts);"'

# An easier way to git clone
function gclone() {
  git clone "git@github.com:$1.git"
}

# For what this is doing, see this medium article:
# https://medium.com/@fredrikanderzon/setting-up-ssh-keys-for-multiple-bitbucket-github-accounts-a5244c28c0ac
function keygen() {
  md "$HOME/.ssh"

  if [ ! -f "$HOME/.ssh/id_rsa" ]; then
    ssh-keygen -t rsa -f "$HOME/.ssh/id_rsa" -N ""
    ssh-add "$HOME/.ssh/id_rsa"
  fi

  ssh-keygen -t rsa -C $2 -f "$HOME/.ssh/$2" -N ""
  ssh-add "$HOME/.ssh/$2"

  touch "$HOME/.ssh/config"

  if ! grep -q "Host $1" "$HOME/.ssh/config"; then
    echo "Host $1\n  HostName $1\n  IdentityFile $HOME/.ssh/id_rsa\n" >> "$HOME/.ssh/config"
  fi

  if ! grep -q "Host $2.$1" "$HOME/.ssh/config"; then
    echo "Host $2.$1\n  HostName $1\n  IdentityFile $HOME/.ssh/$2\n" >> "$HOME/.ssh/config"
  fi

  pbcopy < "$HOME/.ssh/id_rsa.pub"
}

# grepe is a numbered case insensitive recursive search in current dir
function grepe() {
  git grep -i --no-index --exclude-standard $1 | # grep ignoring all files in .gitignore
  egrep -v '.{200}' | # ignore lines which are longer than 200
  awk '{print NR, $0}' | # output of above command with line numbers
  grep $1 # highlight the original search
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
    egrep -v '.{200}' | # ignore lines which are longer than 200
    sed -n "$arg p" | # take only $arg line - see here for info: https://stackoverflow.com/a/1429628/4699289
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

# movtogif converts any /path/to/file.mov file into a /path/to/file.gif file
# inspired by https://gist.github.com/dergachev/4627207
function movtogif() {
  ffmpeg -i "$1" -s 600x400 -pix_fmt rgb24 -r 10 -f gif - |
  gifsicle --optimize=3 --delay=3 > "$(echo $1 | sed 's/\.mov$//').gif"
}

function addtopath() {
  if [[ "$PATH" != *"$1"* ]]; then
    PATH="$PATH:$1"
  fi
}

# A place for all our environment variables
if [ -f "$HOME/.zsh_envs" ]; then
  source "$HOME/.zsh_envs"
fi
