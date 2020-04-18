.PHONY: all

all: homebrew git sublime vim bash python

homebrew:
	./install_homebrew.sh
git:
	brew install git
	git config --global user.name "Kent Åsvang"
	git config --global user.email kentaasvang@gmail.com
	git config --global core.editor vi
	git config --global core.excludesfile ~/.gitignore

python:
	brew install python3
	brew install python@3.8

remove-python:
	brew uninstall python3
	brew uninstall python@3.8

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

postgres:
	brew install postgres
	brew install pgcli
	@echo "\n\n# Making the 'psql'-command available from the PATH" >> ~/.bash_profile;
	@echo 'export PATH="/usr/local/opt/libpq/bin:$PATH"' >> ~/.bash_profile;
	
