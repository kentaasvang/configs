
homebrew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

vim:
	cp ./.vimrc ~/.vimrc
	mkdir -p ~/.vim/ftplugin && cp ./python.vim ~/.vim/ftplugin/python.vim

remove-vim:
	rm ~/.vimrc
	rm -rf ~/.vim/ftplugin


bash:
	cp ./.bash_profile ~/.bash_profile
