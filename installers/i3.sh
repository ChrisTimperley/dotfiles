#!/usr/bin/env bash
if ! which i3 &> /dev/null; then
  echo "installing i3..."
  sudo apt-get install -y i3
else
  echo "i3 is already installed."
fi
