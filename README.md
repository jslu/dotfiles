# My various software settings
* tmux.conf - tmux
* vim - .vim directory & vimrc file

# Installation
	git clone http://github.com/jslu/dotfiles
	ln -s dotfiles/tmux.conf ~/.tmux.conf
	ln -s dotfiles/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

# Install all bundled vim plugins
	vim +PluginInstall +qall (from commandline)
	:PluginInstall (within vim)

