VSCODE_CONF=~/.config/Code/User

install: install-vim install-bash install-binaries

environ: install-vscode

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

install-sh:
	rm -f ~/.myprofile
	ln -s `pwd`/sh/myprofile ~/.myprofile

install-bash: install-sh
	rm -f ~/.bashrc
	ln -s `pwd`/bash/bashrc ~/.bashrc

install-binaries:
	rm -rf ~/.bin
	ln -s `pwd`/bin ~/.bin

install-vscode:
	rm -rf $(VSCODE_CONF)/settings.json $(VSCODE_CONF)/snippets
	ln -s `pwd`/vscode/settings.json $(VSCODE_CONF)/settings.json
	ln -s `pwd`/vscode/snippets $(VSCODE_CONF)/snippets
