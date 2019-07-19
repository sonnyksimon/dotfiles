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

install-ranger:
	rm -rf ~/.config/ranger
	ln -s `pwd`/ranger ~/.config/ranger

configure-bash:
	rm -f ~/.bash_profile
	ln -s `pwd`/bash/bash_profile ~/.bash_profile

configure-git:
	git config --global user.name "Sonny Kothapally"
	git config --global user.email me@sonnyksimon.com
	git config --global color.branch auto
	git config --global color.diff auto
	git config --global color.interactive auto
	git config --global color.grep auto
	git config --global alias.lol "log --graph --oneline --decorate --color --all"
