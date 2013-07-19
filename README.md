# My various software settings
* tmux.conf - tmux
* vim - .vim directory & vimrc file

# Installation
	git clone http://github.com/jslu/dotfiles
	ln -s dotfiles/tmux.conf ~/.tmux.conf
	ln -s dotfiles/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	cd dotfiles; git submodule init; git submodule update

Follow http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
