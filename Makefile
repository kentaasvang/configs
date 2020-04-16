

vim:
	cp ./.vimrc ~/.vimrc
	mkdir -p ~/.vim/ftplugin && cp ./python.vim ~/.vim/ftplugin/python.vim

shell:
	cp ./.zshrc ~/.zshrc

remove-vim:
	rm ~/.vimrc
	rm -rf ~/.vim/ftplugin
