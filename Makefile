install: install-vim install-emacs install-bash install-screen install-tmux install-git install-python

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

install-emacs:
	rm -rf ~/.emacs.d
	ln -s `pwd`/emacs ~/.emacs.d

install-sh:
	rm -f ~/.myprofile
	ln -s `pwd`/sh/myprofile ~/.myprofile
	test -f ~/.profile_local || touch ~/.profile_local

install-bash: install-sh
	rm -f ~/.bashrc
	ln -s `pwd`/bash/bashrc ~/.bashrc
	test -f ~/.bashrc.local || touch ~/.bashrc.local

install-screen:
	rm -f ~/.screenrc
	ln -s `pwd`/screen/screenrc ~/.screenrc

install-tmux:
	rm -f ~/.tmux.conf
	ln -s `pwd`/tmux/tmuxconf ~/.tmux.conf

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig
	test -f ~/.gitconfig.local || cp `pwd`/git/localconf ~/.gitconfig.local

install-python:
	[ -d ~/bin ] && cp `pwd`/python/* ~/bin/
