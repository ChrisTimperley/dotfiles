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

# Create symbolic links to dot files
link gitconfig
link tmux.conf
link vimrc
link dir_colors
link minttyrc
link bash_aliases
