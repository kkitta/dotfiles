#
# 基本設定
#
unsetopt AUTO_MENU

typeset -U PATH

if [[ -o 'login' ]]; then
  PATH+=":${HOME}/bin"

  export EDITOR='/usr/bin/vim'
fi

bindkey -e

alias ls='ls -AG'
alias web='python -m SimpleHTTPServer'

fpath+="${HOME}/.zsh"
fpath+="$( brew --prefix )/share/zsh/site-functions"
fpath+="$( brew --prefix )/share/zsh-completions"

PROMPT='%F{green}%n%f%F{blue}@%f%F{green}%m%f %F{blue}%~
$%f '

prompt_command() {
  printf "\e[4;90m%${COLUMNS}s\e[0m\n"
}

autoload -Uz add-zsh-hook
autoload -Uz bashcompinit && bashcompinit
autoload -Uz compinit     && compinit

add-zsh-hook precmd prompt_command


#
# AWS CLI
#
complete -C /usr/local/bin/aws_completer aws


#
# Ruby
#
eval "$( rbenv init - )"


#
# Golang
#
if [[ -o 'login' ]]; then
  export GOPATH="${HOME}/projects/golang"

  PATH+=":${GOPATH}/bin"
fi

eval "$( goenv init - )"


#
# Python
#
#eval "$( pyenv init - )"


#
# Node.js
#
eval "$( nodenv init - )"


#
# Google Cloud SDK
#
source $( brew --prefix )/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
source $( brew --prefix )/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc


#
# 後始末
#
unset -f add-zsh-hook
