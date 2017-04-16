SHELL=/bin/bash

all: tmux git bash dyn-colours ssh fonts zsh i3 xorg vim

git:
	@ source "${HOME}/.bashrc" && \
		dotfilelink "${CURDIR}/gitconfig" "${HOME}/.tmux.conf"

vim:
	${MAKE} -c vim

fonts:
	${MAKE} -C fonts

bash:
	${MAKE} -C bash

zsh:
	${MAKE} -C zsh

git: bash
	${MAKE} -C git

tmux: bash
	${MAKE} -C tmux

xorg: bash
	${MAKE} -C xorg

ssh: bash
	${MAKE} -C ssh

i3: bash
	${MAKE} -C i3

dyn-colours:
	@ if [ ! -d "${HOME}/.dynamic-colors" ]; then \
			git clone https://github.com/sos4nt/dynamic-colors ~/.dynamic-colors; \
		fi

.PHONY: bash zsh i3 git tmux xorg zsh fonts ssh dyn-colours vim
