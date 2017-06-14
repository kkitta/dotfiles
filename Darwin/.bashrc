login_shell() {
  [ "${LOGIN_SHELL}" = 'yes' ]

  return ${?}
}

uniq_path() {
  echo -n "${PATH}" \
    | /usr/bin/ruby -F: -a -n -e 'puts($F.uniq.join(":"))'
}

if [ "${TERM}" = 'screen' ]; then
  PS1='\[\ek\e\\\]\[\e[32m\]\u\[\e[34m\]@\[\e[32m\]\h \[\e[34m\]\w\n\$ \[\e[0m\]'
else
  PS1='\[\e[32m\]\u\[\e[34m\]@\[\e[32m\]\h \[\e[34m\]\w\n\$ \[\e[0m\]'
fi

PROMPT_COMMAND='printf "\e[4;90m%${COLUMNS}s\e[0m\n"'

export EDITOR='/usr/bin/vim'

alias ls='ls -AG'
alias web='python -m SimpleHTTPServer'

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash

eval "$( rbenv init - )"

PATH="$( uniq_path )"
