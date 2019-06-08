alias proj="cd $HOME/proj && ls"
alias zrc="mvim -v $HOME/.zshrc"
alias vrc="mvim -v $HOME/.vimrc"
alias n="npm run"
alias pg="postgres -D /usr/local/var/postgres"
alias ss="echo \"sourcing zshrc\"; source $HOME/.zshrc"
alias za="mvim -v $HOME/.oh-my-zsh/plugins/sams-config/sams-config.plugin.zsh"
alias ze="mvim -v $HOME/.zsh_envs"
alias python=python3
alias pip=pip3
alias dj="python manage.py"

# show all the sripts in your package.json
alias s='node -e "console.log(require(\"./package.json\").scripts);"'

# An easier way to git clone
function gclone() {
 git clone "git@github.com:$1.git"
}

# movtogif converts any /path/to/file.mov file into a /path/to/file.gif file
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

# A place for all our environment variables
if [ -f "$HOME/.zsh_envs" ]; then
 source "$HOME/.zsh_envs"
fi
