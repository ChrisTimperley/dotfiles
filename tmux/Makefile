SHELL=/bin/bash

all: tmux.conf

tmux.conf:
	@ source "${HOME}/.bashrc" && \
		dotfilelink "${CURDIR}/tmux.conf" "${HOME}/.tmux.conf"

.PHONY: tmux.conf
