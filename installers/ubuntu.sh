#!/bin/bash
sudo apt-get install -y help2man
pushd tmp && \
  wget https://github.com/haikarainen/light/archive/v1.0.tar.gz && \
  tar -xf v1.0.tar.gz && \
  pushd light && \
  sudo make && \
  sudo make install && \
  popd && \
  rm -rf v1.0.tar.gz light && \
  popd
