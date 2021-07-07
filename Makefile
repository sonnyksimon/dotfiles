install: install-vim install-bash install-screen install-tmux install-git

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

install-screen:
	rm -f ~/.screenrc
	ln -s `pwd`/screen/screenrc ~/.screenrc

install-tmux:
	rm -f ~/.tmux.conf
	ln -s `pwd`/tmux/tmuxconf ~/.tmux.conf

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig
