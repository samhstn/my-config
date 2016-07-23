#### TODO: Delete commented git aliases
# Query/use custom command for `git`.
zstyle -s ":vcs_info:git:*:-all-" "command" _omz_git_git_cmd
: ${_omz_git_git_cmd:=git}

#
# Functions
#

# The name of the current branch
# Back-compatibility wrapper for when this function was defined here in
# the plugin, before being pulled in to core lib/git.zsh as git_current_branch()
# to fix the core -> git plugin dependency.
function current_branch() {
  git_current_branch
}
# The list of remotes
function current_repository() {
  if ! $_omz_git_git_cmd rev-parse --is-inside-work-tree &> /dev/null; then
    return
  fi
  echo $($_omz_git_git_cmd remote -v | cut -d':' -f 2)
}
# Pretty log messages
function _git_log_prettily(){
  if ! [ -z $1 ]; then
    git log --pretty=$1
  fi
}
# Warn if the current branch is a WIP
function work_in_progress() {
  if $(git log -n 1 2>/dev/null | grep -q -c "\-\-wip\-\-"); then
    echo "WIP!!"
  fi
}

#
# Aliases
# (sorted alphabetically)
#

alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gbd='git branch -D'
alias gbda='git checkout master && git branch | command grep -vE "^(\*|\s*master\s*$)" | command xargs -n 1 git branch -d && echo "deleted all"'
alias gcmsg='git commit -m'
alias gcb='git checkout -b'
alias gclean='git reset --hard && git clean -dfx'
alias gco='git checkout'
gclone() { git clone "https://github.com/$1.git" }
alias gd='git diff'
alias gcm='git checkout master'

alias ggpush='git push origin $(git_current_branch)'
alias ggpull='git pull origin $(git_current_branch)'
alias gl='git pull'
alias gm='git merge'
alias gmom='git merge origin/master'
alias gp='git push'
alias gst='git status'
alias grhard='git reset --hard'
alias gr='git reset'
