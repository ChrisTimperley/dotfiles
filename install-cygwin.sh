#!/bin/bash
echo "Installing Cygwin specifics..."

# install apt-cyg
if [ $(which "apt-cyg") != "/usr/bin/apt-cyg" ]; then
  echo "installing apt-cyg"
  lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg
  install apt-cyg /bin
  rm apt-cyg -rf
else
  echo "skipping apt-cyg (already installed)"
fi

# fix the stupid bells in Mintty
if (! grep -q "^set bell-style none$" ~/.inputrc); then
  echo "fixing mintty bells"
  echo "set bell-style none" >> ~/.inputrc 
else
  echo "skipping mintty bells (already fixed)"
fi
