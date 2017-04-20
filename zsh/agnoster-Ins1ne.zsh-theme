# downloaded from https://gist.github.com/Ins1ne/3751033
# Original theme https://github.com/agnoster zsh theme

ZSH_THEME_GIT_PROMPT_DIRTY='±'

function _git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || ref="➦ $(git show-ref --head -s --abbrev |head -n1 2> /dev/null)"
  echo "${ref/refs\/heads\//⭠ }$(parse_git_dirty)"
}

function _git_info() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    local BG_COLOR=green
    if [[ -n $(parse_git_dirty) ]]; then
      BG_COLOR=yellow
      FG_COLOR=black
    else
        if [[ ! -z $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
            BG_COLOR=red
            FG_COLOR=white
        fi
    fi
    echo "%{%K{$BG_COLOR}%}⮀%{%F{$FG_COLOR}%} $(_git_prompt_info) %{%F{$BG_COLOR}%K{blue}%}⮀"
  else
    echo "%{%K{blue}%}⮀"
  fi
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo "%{%b%F{black}%K{magenta}%}⮀ "`basename $VIRTUAL_ENV`"%{%b%F{magenta}%K{magenta}%}⮀"
}

PROMPT_HOST='%{%b%F{gray}%K{black}%} %(?.%{%F{green}%}✔.%{%F{red}%}✘)%{%F{yellow}%} %n %{%F{black}%}'
PROMPT_DIR='%{%F{white}%} %~%  '
PROMPT_SU='%(!.%{%k%F{blue}%K{black}%}⮀%{%F{yellow}%} ⚡ %{%k%F{black}%}.%{%k%F{blue}%})⮀%{%f%k%b%}'

PROMPT='%{%f%b%k%}$PROMPT_HOST$(virtualenv_info)$(_git_info)$PROMPT_DIR$PROMPT_SU
❯ '
RPROMPT='%{$fg[green]%}[%*]%{$reset_color%}'
