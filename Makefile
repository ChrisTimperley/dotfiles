all: i3 bash tmux git xorg zsh

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

i3: bash xorg
	${MAKE} -C i3

.PHONY: bash zsh i3 git tmux xorg zsh
