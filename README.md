# My various software settings
* tmux.conf - tmux
* vim - .vim directory & vimrc file
* tjkirch-jslu.zh-theme - personal oh-my-zsh theme

# Installation
	Follow the instruction on https://github.com/robbyrussell/oh-my-zsh to install oh-my-zsh
	git clone http://github.com/jslu/dotfiles
	mkdir -p ~/.oh-my-zsh/custom/themes/
	ln -s dotfiles/zsh_custom/themes/tjkirch-jslu.zsh-theme ~/.oh-my-zsh/custom/themes/tjkirch-jslu.zsh-theme
	ln -s dotfiles/tmux.conf ~/.tmux.conf
	ln -s dotfiles/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	Modify $ZSH_THEME and $plugins in .zshrc

# Install all bundled vim plugins
	vim +PluginInstall +qall (from commandline)
	:PluginInstall (within vim)
