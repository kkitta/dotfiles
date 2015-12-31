.PHONY: link

link:
	git ls-files .[A-Za-z0-9]* \
	  | xargs -I @ ln -sfhv ${PWD}/@ ~/@
	git ls-files .gitconfig.* \
	  | xargs -I @ git config --global include.path '~/@'
