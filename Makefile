# colors for output
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
NOCOLOR="\033[0m"

help:
	@echo "---------------------";
	@echo ${GREEN}Available commands:${NOCOLOR}
	@echo "---------------------\n";
	@echo ${YELLOW}homebrew:${NOCOLOR}
	@echo "\tInstalls homebrew"
	@echo ${YELLOW}python:${NOCOLOR}
	@echo "\tInstalls python"
	@echo ${YELLOW}remove-python${NOCOLOR}
	@echo "\tUninstalls python"
	@echo ${YELLOW}git${NOCOLOR}
	@echo "\tInstalls git"
	@echo ${YELLOW}remove-git${NOCOLOR}
	@echo "\tUinstalls git"
	@echo ${YELLOW}vim${NOCOLOR}
	@echo "\tInstalls configure-files for vim"
	@echo ${YELLOW}remove-vim${NOCOLOR}
	@echo "\tUninstalls configure-files for vim"
	@echo ${YELLOW}python-vim${NOCOLOR}
	@echo "\tInstalls configure-files for python-vim"
	@echo ${YELLOW}remove-python-vim${NOCOLOR}
	@echo "\tUninstalls configure-files for pythonvim"
	@echo ${YELLOW}html-vim${NOCOLOR}
	@echo "\tInstalls configure-files for html-vim"
	@echo ${YELLOW}remove-html-vim${NOCOLOR}
	@echo "\tUninstalls configure-files for html-vim"
	@echo ${YELLOW}tmux${NOCOLOR}
	@echo "\tInstall and setup tmux"
	@echo ${YELLOW}remove-tmux${NOCOLOR}
	@echo "\tUninstall and rmove setup for tmux"
	@echo ${YELLOW}bash${NOCOLOR}
	@echo "\tInstall and configure bash"
	@echo ${YELLOW}remove-bash${NOCOLOR}
	@echo "\tUninstall bash"

homebrew:
	@echo ${GREEN}Installing homebrew..${NOCOLOR};
	./install_homebrew.sh
	@echo ${GREEN}Finished installing homebrew..${NOCOLOR};


python: homebrew
	@echo ${GREEN}Installing python..${NOCOLOR};
	brew install python
	@echo ${GREEN}Finished installing python..${NOCOLOR};
	@echo ${GREEN}Installing python3.8 ..${NOCOLOR};
	brew install python@3.8
	@echo ${GREEN}Finished installing python3.8 ..${NOCOLOR};

remove-python: homebrew
	@echo ${GREEN}Removing python installs.. ${NOCOLOR};
	brew uninstall python3
	brew uninstall python@3.8
	@echo ${GREEN}Finished removing python isntall..${NOCOLOR};

git: homebrew
	@echo ${GREEN}Installing and setting up git..${NOCOLOR};
	brew install git
	git config --global user.name "Kent Marting Åsvang"
	git config --global user.email kentaasvang@gmail.com
	git config --global core.editor vi
	git config --global core.excludesfile ~/.gitignore
	@echo ${GREEN}Finished installing and setting up git..${NOCOLOR};

remove-git: homebrew
	@echo ${GREEN}Removing git install and setup..${NOCOLOR};
	brew uninstall git
	rm ~/.gitconfig
	@echo ${GREEN}Finished removing git install and setup..${NOCOLOR};

vim: python-vim html-vim
	@echo ${GREEN}Configuring vim-files..${NOCOLOR};
	cp ./.vimrc ~/.vimrc
	mkdir -p ~/.vim/ftplugin
	mkdir -p ~/.vim/syntax
	cp ./html.vim ~/.vim/ftplugin/html.vim
	@echo ${GREEN}Removing configured vim-files..${NOCOLOR};

remove-vim:
	@echo ${GREEN}Removing vim-installs and config files..${NOCOLOR};
	rm ~/.vimrc
	rm -rf ~/.vim/ftplugin
	@echo ${GREEN}Finished removing vim-installs and config files..${NOCOLOR};

python-vim:
	@echo ${GREEN}Configuring vim syntax for python..${NOCOLOR};
	mkdir -p ~/.vim/ftplugin
	cp ./python.vim ~/.vim/ftplugin/python.vim
	@echo ${GREEN}Removing configured vim syntax for python..${NOCOLOR};
	
remove-python-vim:
	@echo ${GREEN}Removing python.vim files..${NOCOLOR};
	rm ~/.vim/ftplugin/python.vim
	@echo ${GREEN}Finished..${NOCOLOR};

html-vim:
	@echo ${GREEN}Configuring vim syntax for html..${NOCOLOR};
	mkdir -p ~/.vim/ftplugin
	cp ./html.vim ~/.vim/ftplugin/html.vim
	@echo ${GREEN}Removing configured vim syntax for html..${NOCOLOR};

remove-html-vim:
	@echo ${GREEN}Removing html.vim files..${NOCOLOR};
	rm ~/.vim/ftplugin/html.vim
	@echo ${GREEN}Finished..${NOCOLOR};

tmux: homebrew
	@echo ${GREEN}Installing tmux and config-files..${NOCOLOR};
	brew install tmux
	cp ./.tmux.conf ~/.tmux.conf
	@echo ${GREEN}Finished installing tmux and config-files..${NOCOLOR};

remove-tmux: homebrew
	@echo ${GREEN}Remove tmux install and configuration..${NOCOLOR};
	brew uninstall tmux
	rm ~/.tmux.conf
	@echo ${GREEN}Finished removing tmux install and configuration..${NOCOLOR};

bash:
	@echo ${GREEN}Install bash configuration-files${NOCOLOR};
	cp ./.bash_profile ~/.bash_profile
	@echo ${GREEN}Finished installing bash configuration-files${NOCOLOR};

remove-bash:
	@echo ${GREEN}Remove bash configuration files..${NOCOLOR};
	rm ~/.bash_profile
	@echo ${GREEN}Finished Removing bash configuration files..${NOCOLOR};
