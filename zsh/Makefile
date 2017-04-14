SHELL=/bin/bash

all: zshrc

zshrc:
	@ source "${HOME}/.bashrc" && \
		dotfilelink "${CURDIR}/zshrc" "${HOME}/.zshrc"

.PHONY: zshrc
