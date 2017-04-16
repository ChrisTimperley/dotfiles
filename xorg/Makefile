SHELL=/bin/bash

all: Xdefaults xinitrc

Xdefaults:
	@ source "${HOME}/.bashrc" && \
		dotfilelink "${CURDIR}/Xdefaults" "${HOME}/.Xdefaults"

xinitrc:
	@ source "${HOME}/.bashrc" && \
		dotfilelink "${CURDIR}/xinitrc" "${HOME}/.xinitrc"

.PHONY: Xdefaults xinitrc
