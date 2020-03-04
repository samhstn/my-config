eval directory_box='$FG[070]'
eval knight='$FG[136]'
eval git_label='$FG[069]'
eval git_text='$FG[160]'
eval cross='$FG[196]'
eval tick='$FG[190]'
eval shell_text='$reset_color'

PROMPT='${_current_dir}$(git_prompt_info) ${_knight} '

local _current_dir="%{$directory_box%}[%0~]%{$reset_color%} "
local _knight="%{$knight%}♞ %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$git_label%}git:(%{$git_text%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$git_label%}) %{$cross%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$git_label%}) %{$tick%}✔"
