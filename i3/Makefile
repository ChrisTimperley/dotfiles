#!/usr/bin/make -f
all: config i3blocks.conf

config:
	@ mkdir -p .config/i3
	@ source "${HOME}/.bashrc" && \
		dotfilelink "${CURDIR}/config" "${HOME}/.config/i3/config"

i3blocks.conf:
	@ source "${HOME}/.bashrc" && \
		dotfilelink "${CURDIR}/i3blocks.conf" "${HOME}/.i3blocks.conf"

.PHONY: config i3blocks.conf
