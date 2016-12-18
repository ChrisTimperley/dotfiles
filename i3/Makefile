#!/usr/bin/make -f
all: config

config:
	@ mkdir -p .config/i3
	@ source "${HOME}/.bashrc" && \
		dotfilelink "${CURDIR}/config" "${HOME}/.config/i3/config"

.PHONY: config
