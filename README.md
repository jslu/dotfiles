# My various software settings
* tmux.conf: tmux configuration
* vim: .vim directory & vimrc file
* zsh_custom: zsh custom plugins, themes, settings

# Installation
First, clone the repository (use `--recursive` to retrieve submodules).

	git clone --recursive http://github.com/jslu/dotfiles.git

Follow the instruction on https://github.com/robbyrussell/oh-my-zsh to install oh-my-zsh.

Then create symbolic links into the repository.

	ln -s /full_path_to/dotfiles/zsh_custom/themes ~/.oh-my-zsh/custom/themes
	ln -s /full_path_to/dotfiles/zsh_custom/zshrc ~/.zshrc
	(cd ~/.oh-my-zsh/custom/plugins/; for i in /full_path_to/dotfiles/zsh_custom/plugins/*; do ln -s $i; done)
	ln -s dotfiles/tmux.conf ~/.tmux.conf
	ln -s dotfiles/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

# Install all bundled vim plugins
	vim +PluginInstall +qall	# from commandline

# Update submodules when they're outdated
	git submodule foreach --recursive git pull origin master


# Reference
* Submodules-related usage from [this tutorial][1]
* Vundle-related usage from [this tutorial][2]. I like the way he checks the existence of Vundle and install it automatically if needed, however the syntax of specifying a plugin to install is outdated. The vimrc is now managing plugins with Vundle's latest syntax, instructed by [it's github project page][3].

[1]: http://blog.chh.tw/posts/git-submodule/	"Git Submodule 用法筆記" 
[2]: http://blog.chh.tw/posts/vim-vundle/	"更好用的 Vim 外掛管理工具：Vundle" 
[3]: https://github.com/gmarik/Vundle.vim	"Vundle, the plug-in manager for Vim" 
