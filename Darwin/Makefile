.PHONY: link

link:
	find ${PWD} -type f ! -name 'Makefile' \
	  | xargs -I @ bash -c 'ln -sfhv @ ~/$$( echo @ | sed "s|${PWD}/||" )'
	git config --global include.path '~/.gitconfig.core'
