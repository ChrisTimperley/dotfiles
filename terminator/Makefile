SHELL=/bin/bash

all: config

config:
	@ source "${HOME}/.bashrc" && \
		mkdir -p "${HOME}/.config/terminator" && \
		dotfilelink "${CURDIR}/config" "${HOME}/.config/terminator/config"

.PHONY: config
