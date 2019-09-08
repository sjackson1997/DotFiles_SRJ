#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Need to install python-dev in order to get headers for cmake to run install.py below
sudo apt install python-dev python3-dev build-essential cmake -y

# The below script ensures that ycmd server will be able to start up and avoid error msg
python ~/.vim/bundle/YouCompleteMe/install.py


vim +PluginInstall +qall

