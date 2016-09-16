#!/bin/bash
here=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

function link {
  file=$1
  if (test -f ~/.$file); then
    echo "Skipping symbolic link: $file (file already exists)"
  else 
    echo "Creating symbolic link from ~/.$file to $here/$file"
    ln -s $here/$file ~/.$file
  fi
}

# Download the git submodules
git submodule init
git submodule update

# Create symbolic links to dot files
link gitconfig
link tmux.conf
link dir_colors
link minttyrc
link bash_aliases
link screenrc

# Add pirate-get config
test -f ~/.config/pirate-get || ln -s  $here/config/pirate-get ~/.config/pirate-get

# Install OS specifics
#if [ uname -o == "Cygwin" ];
# $here/install-cygwin.sh 
#fi


# Vim
link vimrc
mkdir -p ~/.vim/bundle
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then 
  git clone -q https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
link vim/colors
vim +PluginInstall +qall
