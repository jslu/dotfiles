# My various software settings
* tmux.conf - tmux
* vim - .vim directory & vimrc file

# Installation
	git clone http://github.com/jslu/dotfiles
	ln -s dotfiles/tmux.conf ~/.tmux.conf
	ln -s dotfiles/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	cd dotfiles; git submodule init; git submodule update

# Upgrade all bundled plugins
	git submodule foreach git pull origin master

# Add a new plugin (example)
	git submodule add https://github.com/Lokaltog/vim-easymotion.git vim/bundle/easymotion

Follow http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
