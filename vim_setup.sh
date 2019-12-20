#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Test if the .vimrc file has been set up as a symbolic link; link it if not
if [[ ! -h ~/.vimrc ]]; then
	ln -s ~/git/DotFiles_SRJ/.vimrc ~/.vimrc
fi

# I am adding this comment for Cyrus' benefit

# Need to install python-dev in order to get headers for cmake to run install.py below
sudo apt install python-dev python3-dev build-essential cmake -y

# Note that when the below line runs, vim will open and install the plugins
# listed in your .vimrc file.  No action necessary; vim will close automatically
# once complete.
vim +PluginInstall +qall

# The below script ensures that ycmd server will be able to start up and avoid error msg
python ~/.vim/bundle/YouCompleteMe/install.py



