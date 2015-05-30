if [ "${TERM}" = 'screen' ]; then
  PS1='\n\033k\033\\\[\033[32m\]\u\[\033[34m\]@\[\033[32m\]\h \[\033[34m\]\w\n\$ \[\033[0m\]'
else
  PS1='\n\[\033[32m\]\u\[\033[34m\]@\[\033[32m\]\h \[\033[34m\]\w\n\$ \[\033[0m\]'
fi

alias ls='ls -AG'

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash

PATH+=":${HOME}/.gem/ruby/2.0.0/bin"
