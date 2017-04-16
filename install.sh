#!/bin/bash
here=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source ~/.bashrc

mkdir -p ~/.vim/bundle
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then 
  git clone -q https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall
