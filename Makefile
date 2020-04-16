.PHONY: all

all: homebrew git sublime vim bash

homebrew:
	./install_homebrew.sh
git:
	brew install git
	git config --global user.name "Kent Åsvang"
	git config --global user.email kentaasvang@gmail.com
	git config --global core.editor vi
	git config --global core.excludesfile ~/.gitignore

remove-git:
	brew uninstall git
	rm ~/.gitconfig

sublime:
	brew cask install sublime-text

remove-sublime:
	brew cask uninstall sublime-text

vim:
	cp ./.vimrc ~/.vimrc
	mkdir -p ~/.vim/ftplugin && cp ./python.vim ~/.vim/ftplugin/python.vim

remove-vim:
	rm ~/.vimrc
	rm -rf ~/.vim/ftplugin


bash:
	chsh -s /bin/bash
	cp ./.bash_profile ~/.bash_profile
