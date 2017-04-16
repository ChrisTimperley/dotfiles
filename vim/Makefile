SHELL=/bin/bash

all: install-colours vimrc

install-colours:
	@ ./install-colours

vimrc:
	@ source "${HOME}/.bashrc" && \
		dotfilelink "${CURDIR}/vimrc" "${HOME}/.vimrc"

.PHONY: install-colours vimrc
