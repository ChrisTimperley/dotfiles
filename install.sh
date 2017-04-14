#!/bin/bash
here=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source ~/.bashrc

# Vim
ln -s "${here}/vimrc" "${HOME}/.vimrc"

mkdir -p ~/.vim/bundle
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then 
  git clone -q https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
mkdir -p "${HOME}/vim"
ln -s vim/colors "${HOME}/vim/colors"
vim +PluginInstall +qall
