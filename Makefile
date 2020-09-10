.PHONY: help, homebrew, python, remove-python, git, \
	remove-git, sublime, remove-sublime, vim, \
	remove-vim, tmux, remove-tmux


help:
	@echo "There is no help for you"

homebrew:
	./install_homebrew.sh


python: homebrew
	brew install python
	brew install python@3.8

remove-python: homebrew
	brew uninstall python3
	brew uninstall python@3.8

git: homebrew
	brew install git
	git config --global user.name "Kent Åsvang"
	git config --global user.email kentaasvang@gmail.com
	git config --global core.editor vi
	git config --global core.excludesfile ~/.gitignore

remove-git: homebrew
	brew uninstall git
	rm ~/.gitconfig

sublime: homebrew
	brew cask install sublime-text

remove-sublime: homebrew
	brew cask uninstall sublime-text

vim: python-vim
	cp ./.vimrc ~/.vimrc
	mkdir -p ~/.vim/ftplugin
	mkdir -p ~/.vim/syntax
	cp ./html.vim ~/.vim/ftplugin/html.vim

python-vim:
	mkdir -p ~/.vim/ftplugin
	cp ./python.vim ~/.vim/ftplugin/python.vim
	
remove-vim:
	rm ~/.vimrc
	rm -rf ~/.vim/ftplugin

tmux: homebrew
	brew install tmux
	cp ./.tmux.conf ~/.tmux.conf

remove-tmux: homebrew
	brew uninstall tmux
	rm ~/.tmux.conf

bash:
	cp ./.bash_profile ~/.bash_profile

