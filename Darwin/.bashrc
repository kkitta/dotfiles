#
# 基本設定
#
if shopt -q 'login_shell'; then
  PATH+=":${HOME}/bin"

  export EDITOR='/usr/bin/vim'
fi

if [ "${TERM}" = 'screen' ]; then
  PS1='\[\ek\e\\\]\[\e[32m\]\u\[\e[34m\]@\[\e[32m\]\h \[\e[34m\]\w\n\$ \[\e[0m\]'
else
  PS1='\[\e[32m\]\u\[\e[34m\]@\[\e[32m\]\h \[\e[34m\]\w\n\$ \[\e[0m\]'
fi

alias ls='ls -AG'
alias web='python -m SimpleHTTPServer'

source $( brew --prefix )/etc/profile.d/bash_completion.sh


#
# Git
#
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash


#
# Docker
#
source /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
#source /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion
source /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion


#
# Ruby
#
eval "$( rbenv init - )"


#
# Golang
#
if shopt -q 'login_shell'; then
  export GOPATH="${HOME}/projects/golang"

  PATH+=":${GOPATH}/bin"
fi

eval "$( goenv init - )"


#
# Python
#
eval "$( pyenv init - )"


#
# Node.js
#
if shopt -q 'login_shell'; then
  export NVM_DIR="${HOME}/.nvm"
fi

source $( brew --prefix )/opt/nvm/nvm.sh


#
# Google Cloud SDK
#
source $( brew --prefix )/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc
source $( brew --prefix )/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc


#
# PATH重複排除
#
PATH="$( echo -n "${PATH}" | ruby -F: -a -n -e 'puts($F.uniq.join(":"))' )"


#
# プロンプト
#
PROMPT_COMMAND='printf "\e[4;90m%${COLUMNS}s\e[0m\n"'
