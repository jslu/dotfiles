# My various software settings
* tmux.conf: tmux configuration
* vim: .vim directory & vimrc file
* zsh_custom: zsh custom plugins, themes, settings

# Installation
	git clone --recursive http://github.com/jslu/dotfiles.git	# use --recursive to retrieve submodules

	Follow the instruction on https://github.com/robbyrussell/oh-my-zsh to install oh-my-zsh

	ln -s /full_path_to/dotfiles/zsh_custom ~/.oh-my-zsh/custom
	ln -s ~/.oh-my-zsh/custom/zshrc ~/.zshrc
	ln -s dotfiles/tmux.conf ~/.tmux.conf
	ln -s dotfiles/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

# Install all bundled vim plugins
	vim +PluginInstall +qall	# from commandline
	:PluginInstall			# within vim

# Update submodules when they're outdated
	git submodule foreach --recursive git pull origin master	# submodules-related commands from [this tutorial][1]


[1]: http://blog.chh.tw/posts/git-submodule/	"How to use git-submodule commands"
