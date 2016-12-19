#!/bin/bash
here=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Download the git submodules
git submodule init
git submodule update

# Create symbolic links to dot files
link minttyrc

# Add pirate-get config
test -f ~/.config/pirate-get || ln -s  $here/config/pirate-get ~/.config/pirate-get

# Vim
link vimrc
mkdir -p ~/.vim/bundle
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then 
  git clone -q https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
link vim/colors
vim +PluginInstall +qall
