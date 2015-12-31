if [ "${TERM}" = 'screen' ]; then
  PS1='\n\[\ek\e\\\]\[\e[32m\]\u\[\e[34m\]@\[\e[32m\]\h \[\e[34m\]\w\n\$ \[\e[0m\]'
else
  PS1='\n\[\e[32m\]\u\[\e[34m\]@\[\e[32m\]\h \[\e[34m\]\w\n\$ \[\e[0m\]'
fi

alias ls='ls -AG'

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash

PATH+=":${HOME}/.gem/ruby/2.0.0/bin"
