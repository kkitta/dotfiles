login_shell() {
  [ "${LOGIN_SHELL}" = 'yes' ]

  return ${?}
}

if [ "${TERM}" = 'screen' ]; then
  PS1='\[\ek\e\\\]\[\e[32m\]\u\[\e[34m\]@\[\e[32m\]\h \[\e[34m\]\w\n\$ \[\e[0m\]'
else
  PS1='\[\e[32m\]\u\[\e[34m\]@\[\e[32m\]\h \[\e[34m\]\w\n\$ \[\e[0m\]'
fi

PROMPT_COMMAND='printf "\e[4;90m%${COLUMNS}s\e[0m\n"'

alias ls='ls -AG'

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash

login_shell && PATH+=":${HOME}/.gem/ruby/2.0.0/bin"
