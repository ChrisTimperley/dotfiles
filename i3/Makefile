#!/usr/bin/make -f
all: config

config:
	@ mkdir -p .config/i3
	@ (test -f ${HOME}/.config/i3/config && echo "skipping: .config/i3/config (already exists)") \
		|| (ln -s ${PWD}/config ${HOME}/.config/i3/config && echo "linked: .config/i3/config") \
		|| true

.PHONY: config
