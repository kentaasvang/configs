
homebrew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" brew doctor

git:
	brew install git
	git config --global user.name "Kent Åsvang"
	git config --global user.email kentaasvang@gmail.com
	git config --global core.editor vi
	git config --global core.excludesfile ~/.gitignore

sublime:
	brew cask install sublime-text

vim:
	cp ./.vimrc ~/.vimrc
	mkdir -p ~/.vim/ftplugin && cp ./python.vim ~/.vim/ftplugin/python.vim

remove-vim:
	rm ~/.vimrc
	rm -rf ~/.vim/ftplugin


bash:
	cp ./.bash_profile ~/.bash_profile
